namespace :benchmark do
  task serialization: :environment do
    Post.destroy_all
    Comment.destroy_all
    Author.destroy_all
    FactoryGirl.create_list(:post, 100, :with_comments)
    posts = Post.all.includes(:author, comments: :author)

    Benchmark.ips do |x|
      x.report('jsonapi-serializer serialization') do
        x.config(time: 10, warmup: 2)

        JSONAPI::Serializer.serialize(
          posts,
          include: %w(author comments.author),
          is_collection: true
        )
      end
    end
  end
end
