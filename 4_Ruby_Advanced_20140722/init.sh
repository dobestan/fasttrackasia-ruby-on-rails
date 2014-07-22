clear
echo "1. Ruby 기초 문법 복습하기"
read -p "계속 진행하려면 엔터를 눌러주세요..."

clear
echo "2. Ruby 파일 입출력"
read -p "계속 진행하려면 엔터를 눌러주세요..."

clear
echo "3. Ruby 이메일 발송하기"
read -p "$ ruby mail.rb"
ruby mail.rb
open https://mail.google.com/mail/u/0/#inbox
read -p "$ ruby gmail.rb"
ruby gmail.rb
open https://mail.google.com/mail/u/0/#inbox
read -p "계속 진행하려면 엔터를 눌러주세요..."

clear
echo "3. Ruby 이메일 발송하기"
echo "이걸 이용하면 이메일 클라이언트를 직접 만들 수 있지 않을까요?"
read -p "$ ruby gmail_custom.rb"
ruby gmail_custom.rb
open https://mail.google.com/mail/u/0/#inbox
read -p "계속 진행하려면 엔터를 눌러주세요..."

clear
echo "4. Ruby Parsing / Crawling"
read -p "open http://music.daum.net/chart/chartsong/list"
open http://music.daum.net/chart/chartsong/list
read -p "$ ruby daum.rb"
ruby daum.rb
read -p "계속 진행하려면 엔터를 눌러주세요..."

clear
echo "4. Ruby Parsing / Crawling"
read -p "open http://www.ppomppu.co.kr/zboard/zboard.php?id=ppomppu2"
open http://www.ppomppu.co.kr/zboard/zboard.php?id=ppomppu2
read -p "ruby ppomppu.rb"
ruby ppomppu.rb
read -p "계속 진행하려면 엔터를 눌러주세요..."

clear
echo "4. Ruby Parsing / Crawling"
echo "만약 갤럭시 S5에 대한 정보만 찾고 싶다면?"
read -p "ruby ppomppu.rb | grep s5"
ruby ppomppu.rb | grep s5
read -p "계속 진행하려면 엔터를 눌러주세요..."

clear
echo "4. Ruby Parsing / Crawling"
echo "이걸 그대로 이용한 사이트가 핫게"
read -p "open http://hotge.co.kr/"
open http://hotge.co.kr/
read -p "계속 진행하려면 엔터를 눌러주세요..."

clear
echo "4. Ruby Parsing / Crawling"
read -p "ruby youtube.rb"
ruby youtube.rb
read -p "계속 진행하려면 엔터를 눌러주세요..."

clear
echo "지금까지 한 것을 응용한다면?"
echo "이메일로 유투브 결과 보내주기?"
read -p "ruby youtube_email.rb"
ruby youtube_email.rb
open https://mail.google.com/mail/u/0/#inbox
