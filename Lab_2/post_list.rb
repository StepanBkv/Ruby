require_relative 'post'
require_relative 'note_list'

class Post_list < Note_list

  def initialize post_list = []
    @note_list = post_list
  end

  def add_note post, name, salary, vacant
    @post_list.push(Post.new(post, name, salary, vacant))
  end

  def change_note department, name, salary, vacant
    @post_list[@choose_note] = Post.new(department, name, salary, vacant)
  end

  def Post_list.read_from_YAML file_name
    Post_list.new(super file_name)
  end

  def Post_list.read_from_txt file_name
    Post_list.new(super file_name)
  end

  def Post_list.write_to_txt file_name, post_list
    super file_name, post_list
  end

  def Post_list.write_to_YAML file_name, post_list
    super file_name, post_list
  end
end

# # post_list = Post_list.read_from_txt('./Lab_2/post_file')
# post_list = Post_list.read_from_YAML('./Lab_2/post_file.yaml')
# # post_list = Post_list.read_from_YAML('./Lab_2/post_file.yaml')
# post_list.choose_note = 1
# print post_list.choose_note