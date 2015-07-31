password = 'kbner7xL'
email = 'j.morgan.lieberthal@gmail.com'
command: "/usr/local/bin/nest.py --user #{email} --password #{password} curtemp"

refreshFrequency: 600000

style: """
  top 10px
  left 400px
  height 288px
  width 288px

  .thermometer
    border-radius 50%
    background-color rgba(0, 85, 255, .8)
    max-height 100%
    height 100%

  .curtarget
    display block
    text-align center
    margin auto
    padding 72px 0 52px 0
    color #fff
    font-family Helvetica Neue
    font-weight 100
    font-size 130px

"""

humanize: (text) ->
  Math.floor(parseInt(text))

render: (output) -> """
  <div class='thermometer'>
    <span class='curtarget'>#{@humanize(output)}</span>
  </div>
"""


#  vim: set ts=8 sw=2 tw=78 ft=coffee et :
