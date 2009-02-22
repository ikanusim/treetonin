class Node < ActiveRecord::Base
  acts_as_tree

  def to_hash(deep = false)
    hash = {'id' => id, 'parent_id' => parent_id, 'name' => name, 'content' => content}
    hash['children'] = children.map {|child| child.to_hash(deep)} if deep && children.present?
    hash
  end

  def to_json(deep = false)
    to_hash(deep).to_json
  end
end
