class Node < ActiveRecord::Base
  acts_as_tree

  def to_hash(deep = false)
    min, max = ActiveRecord::Base.connection.select_all('SELECT MIN(updated_at) AS min, MAX(updated_at) AS max FROM nodes').first.values_at('min', 'max').map {|time| Time.parse(time)}
    hash = {'id' => id, 'parent_id' => parent_id, 'name' => name, 'content' => content, 'red' => (255 * ((updated_at - min) / (max - min))).to_i}
    hash['children'] = children.map {|child| child.to_hash(deep)} if deep && children.present?
    hash
  end

  def to_json(deep = false)
    to_hash(deep).to_json
  end
end
