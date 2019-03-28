const Base = require('./base.js');
const Knex = require('./knex');
class Clue extends Base{
  constructor(props='clue') {
    super(props);
  }
  joinUser(params={}){
    return Knex('clue').join('user','clue.user_id', '=', 'user.id')
    .select({id:'clue.id'},'clue.name','clue.phone','clue.source','clue.create_time','clue.user_id',
      'clue.status',{'role':'user.name'}).where(params);
  }
}
module.exports =Clue