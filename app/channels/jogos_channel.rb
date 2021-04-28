class JogosChannel < ApplicationCable::Channel
  def subscribed
    key = params[:usuario_id]
    jogos_sub = JogoSubscribe.where(key: key).first
    if jogos_sub.blank?
      jogos_sub = JogoSubscribe.new
    end 

    jogos_sub.params = params[:busca]
    jogos_sub.save

    stream_for params[:usuario_id]
  end

  def unsubscribed
    key = params[:usuario_id]
    jogos_sub = JogoSubscribe.where(key: key).first
    if jogos_sub.blank?
      jogos_sub = JogoSubscribe.new
    end 
  end
end
