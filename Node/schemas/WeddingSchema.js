var mongoose = require('mongoose');
var Schema = mongoose.Schema;
var WeddingSchema = new Schema({
    brideId:  Number,
    groomId: Number
}, { collection : 'Wedding' });

WeddingSchema.methods.list = function () {
  return this.model('Wedding').find();
}

module.exports = WeddingSchema;
