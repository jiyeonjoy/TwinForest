import 'package:twin_forest/app/timeline/data/models/pregnancy_entry.dart';
import 'package:twin_forest/app/timeline/data/models/symptoms.dart';
import 'package:twin_forest/app/timeline/data/models/twin_note.dart';

final List<PregnancyEntry> sampleEntries = [
  // 6주
  PregnancyEntry(
    week: 6,
    dayLabel: '6주 0일',
    date: DateTime(2025, 9, 10),
    title: '두 줄이 선명해진 날, 실감이 나기 시작했다',
    summary:
    '테스트기 두 줄을 보고 멍하게 앉아있던 날. 아직 초음파도 하기 전이라 실감이 완전히 나진 않았지만, 몸은 벌써 피곤하고 살짝 메스꺼웠다.',
    symptoms: const Symptoms(
      nausea: 1,
      fatigue: 3,
      mood: 4,
    ),
    twinNote: const TwinNote(
      tree: '아직은 눈에 보이지 않지만, 아주 작은 씨앗처럼 배 속에서 자라고 있을 나무.',
      fruit: '열매도 옆에서 조용히 함께 자라고 있을 거라고 상상해 본다.',
    ),
    memo: '이 작은 두 줄이 앞으로 내 삶을 완전히 바꿔놓겠지. 설레면서도 조금은 무섭다.',
  ),

  PregnancyEntry(
    week: 6,
    dayLabel: '6주 4일',
    date: DateTime(2025, 9, 14),
    title: '속이 조금씩 더 이상해지는 느낌…',
    summary:
    '아직 폭발적인 입덧은 아니지만, 특정 냄새에 민감해지고 밥 냄새만 맡아도 울렁울렁했다. 커피 냄새도 갑자기 싫어졌다.',
    symptoms: const Symptoms(
      nausea: 2,
      fatigue: 3,
      mood: 3,
    ),
    twinNote: const TwinNote(
      tree: '나무는 조용히 자라면서 엄마의 몸을 조금씩 바꾸고 있는 중.',
      fruit: '열매도 같이 “엄마 우리 여기 있어”라고 신호를 보내는 느낌.',
    ),
    memo: '이제 진짜 임신한 게 맞구나 하는 생각이 든다. 몸이 보여주고 있다.',
  ),

  // 7주
  PregnancyEntry(
    week: 7,
    dayLabel: '7주 0일',
    date: DateTime(2025, 9, 17),
    title: '본격적인 입덧의 시작 🤢',
    summary:
    '아침에 일어나자마자 속이 울렁거리고, 물만 마셔도 메스꺼운 느낌. 아무것도 안 먹었는데 토할 것 같은 이상한 하루였다.',
    symptoms: const Symptoms(
      nausea: 3,
      fatigue: 4,
      mood: 2,
    ),
    twinNote: const TwinNote(
      tree: '나무는 열심히 자라느라 엄마 에너지를 많이 쓰고 있는 중인 것 같다.',
      fruit: '열매도 옆에서 같이 자라면서 엄마한테 신호를 보내는 중.',
    ),
    memo: '입덧이라는 게 이런 느낌인가 보다. 시작부터 만만치 않네.',
  ),

  PregnancyEntry(
    week: 7,
    dayLabel: '7주 3일',
    date: DateTime(2025, 9, 20),
    title: '아무것도 안 하고 싶은 날',
    summary:
    '몸이 무겁고 소파에 붙어 있는 시간이 길어진 날. 회사 다니는 게 조금 버겁게 느껴지기 시작했다.',
    symptoms: const Symptoms(
      nausea: 2,
      fatigue: 4,
      mood: 3,
    ),
    twinNote: const TwinNote(
      tree: '나무는 조용히 잘 자라고 있을 거야. 엄마가 누워 있을 때도 함께 쉬는 중 🌳',
      fruit: '열매도 옆에서 통통하게 자라고 있을 것 같다.',
    ),
    memo: '이 순간들도 나중엔 다 그리워질 거라고 생각하면서, 오늘은 그냥 푹 쉬기로 했다.',
  ),

  // 8주
  PregnancyEntry(
    week: 8,
    dayLabel: '8주 0일',
    date: DateTime(2025, 9, 24),
    title: '초음파에서 작은 점을 처음 본 날',
    summary:
    '병원에서 첫 초음파를 하고, 화면에 작게 반짝이는 생명을 봤다. 아직 정확히는 몰랐지만, 배 속에 두 아이가 있다는 걸 암시하는 듯한 모습.',
    symptoms: const Symptoms(
      nausea: 3,
      fatigue: 3,
      mood: 4,
    ),
    twinNote: const TwinNote(
      tree: '나무는 화면에서 작은 빛처럼 보였다. 너무 작아서 더 귀여운 느낌.',
      fruit: '열매도 그 옆에 있을 거라고 상상하면서 화면을 뚫어져라 쳐다봤다.',
    ),
    memo: '“진짜 내 안에 생명이 있구나” 하는 생각이 들면서, 아직은 비밀스럽고 소중한 시간.',
  ),

  PregnancyEntry(
    week: 8,
    dayLabel: '8주 5일',
    date: DateTime(2025, 9, 29),
    title: '쌍둥이일지도 모른다는 말을 들은 날',
    summary:
    '초음파에서 아기집이 두 개로 보인다는 말을 듣고 놀라고 또 놀랐다. 기쁨과 걱정이 동시에 밀려왔다.',
    symptoms: const Symptoms(
      nausea: 3,
      fatigue: 4,
      mood: 4,
    ),
    twinNote: const TwinNote(
      tree: '나무와 열매가 각자 자기 집을 가지고 있다는 생각에 괜히 웃음이 났다.',
      fruit: '두 아이가 서로 의지하면서 자랄 거라고 상상해본다.',
    ),
    memo: '쌍둥이라니… 상상도 못했던 선물. 책임감도 두 배, 사랑도 두 배가 될 것 같다.',
  ),

  // 9주
  PregnancyEntry(
    week: 9,
    dayLabel: '9주 0일',
    date: DateTime(2025, 10, 1),
    title: '몸은 힘든데 마음은 이상하게 편안한 날',
    summary:
    '속은 여전히 울렁거리지만, 쌍둥이라는 사실을 알고 나니 힘든 것도 조금은 버틸 수 있을 것 같았다.',
    symptoms: const Symptoms(
      nausea: 3,
      fatigue: 3,
      mood: 4,
    ),
    twinNote: const TwinNote(
      tree: '나무는 엄마에게 “우리 둘이니까 같이 힘내자”고 말하는 것 같다.',
      fruit: '열매도 옆에서 조용히 응원하고 있을 듯.',
    ),
    memo: '힘든 하루였지만, 아이들을 떠올리면 다시 마음이 차분해진다.',
  ),

  PregnancyEntry(
    week: 9,
    dayLabel: '9주 4일',
    date: DateTime(2025, 10, 5),
    title: '냄새에 더 예민해진 하루',
    summary:
    '집안 음식 냄새, 밖에서 나는 냄새, 향수까지 다 거슬리는 날. 창문을 활짝 열고 하루 종일 환기를 시켰다.',
    symptoms: const Symptoms(
      nausea: 4,
      fatigue: 3,
      mood: 2,
    ),
    twinNote: const TwinNote(
      tree: '나무는 엄마에게 “조금만 더 참아줘” 하고 달래는 중일지도.',
      fruit: '열매도 같이 냄새에 예민해진 건가? 괜히 웃음이 난다.',
    ),
    memo: '예전엔 좋아하던 향들도 다 싫어진 게 조금 신기하다. 몸이 완전히 달라진 느낌.',
  ),

  // 10주
  PregnancyEntry(
    week: 10,
    dayLabel: '10주 0일',
    date: DateTime(2025, 10, 8),
    title: '살짝 배가 불러오는 것 같은 날',
    summary:
    '아직 남들이 보면 잘 모르겠지만, 내가 보기엔 아랫배가 조금 볼록해진 것 같다. 옷을 입을 때마다 나만 아는 변화.',
    symptoms: const Symptoms(
      nausea: 3,
      fatigue: 3,
      mood: 4,
    ),
    twinNote: const TwinNote(
      tree: '나무가 조금씩 자리 잡으면서 엄마 배 모양을 바꾸고 있는 중.',
      fruit: '열매도 그 옆에서 통통하게 자라고 있을 거라 생각하니 괜히 미소가 나온다.',
    ),
    memo: '거울 앞에서 배를 바라보는 시간이 늘었다. “안녕, 나무야, 열매야” 하고 속으로 인사해본다.',
  ),

  PregnancyEntry(
    week: 10,
    dayLabel: '10주 3일',
    date: DateTime(2025, 10, 11),
    title: '회사에서 몰래 간식만 찾던 날',
    summary:
    '밥은 많이 못 먹겠는데 이상하게 과일이나 빵, 과자가 자꾸 땡겼다. 속이 허한 느낌이라 조금씩 자주 먹었다.',
    symptoms: const Symptoms(
      nausea: 2,
      fatigue: 3,
      mood: 3,
    ),
    twinNote: const TwinNote(
      tree: '나무가 “엄마, 우리 배고파”라고 말하는 것 같았다.',
      fruit: '열매도 옆에서 같이 손 들고 있을 것 같아서, 결국 또 과자를 집어 들었다.',
    ),
    memo: '정크푸드보다는 최대한 좋은 걸 먹으려고 노력 중. 그래도 가끔은 과자도 허락해주기로 했다.',
  ),

  // 11주
  PregnancyEntry(
    week: 11,
    dayLabel: '11주 0일',
    date: DateTime(2025, 10, 15),
    title: '피로가 확 몰려오는 느낌의 하루',
    summary:
    '출근하고 조금만 움직여도 금방 지치고, 의자에 앉아만 있어도 허리가 뻐근했다. 집에 와서 그대로 잠들어버렸다.',
    symptoms: const Symptoms(
      nausea: 2,
      fatigue: 4,
      mood: 3,
    ),
    twinNote: const TwinNote(
      tree: '나무는 열심히 세포를 만들고 있는 중이라 그럴 거라고 스스로 위로해본다.',
      fruit: '열매도 옆에서 쑥쑥 자라느라 엄마 에너지를 많이 쓰는 중.',
    ),
    memo: '예전엔 당연했던 일상들이 이렇게 힘들어지는 게 신기하면서도 조금 슬펐다.',
  ),

  PregnancyEntry(
    week: 11,
    dayLabel: '11주 3일',
    date: DateTime(2025, 10, 18),
    title: '기분이 롤러코스터 같던 날 🎢',
    summary:
    '괜히 눈물도 나고, 아무 일도 없는데 서운한 마음이 들었다가, 또 금방 웃음이 나기도 했다. 호르몬의 힘이 이런 걸까.',
    symptoms: const Symptoms(
      nausea: 2,
      fatigue: 3,
      mood: 2,
    ),
    twinNote: const TwinNote(
      tree: '나무는 엄마의 감정 변화를 다 느끼고 있을까? “엄마 울지 마”라고 말해줄 것 같다.',
      fruit: '열매도 옆에서 조용히 안아주는 상상을 해본다.',
    ),
    memo: '이 감정들도 다 지나가겠지. 나중에 보면 웃으면서 추억할 순간들일 거라고 믿기로 했다.',
  ),

  // 12주
  PregnancyEntry(
    week: 12,
    dayLabel: '12주 0일',
    date: DateTime(2025, 10, 22),
    title: '1차 고비를 넘긴 느낌의 12주',
    summary:
    '12주에 접어들었다는 생각만으로도 조금 안심이 되는 날. 아직 입덧은 남아 있지만, 마음이 한층 가벼워졌다.',
    symptoms: const Symptoms(
      nausea: 2,
      fatigue: 3,
      mood: 4,
    ),
    twinNote: const TwinNote(
      tree: '나무는 이제 조금 더 사람 같은 모양을 하고 있겠지.',
      fruit: '열매도 손가락, 발가락이 하나씩 만들어지고 있을 거라 상상해본다.',
    ),
    memo: '여기까지 온 것도 대단하다고 스스로를 칭찬해 줬다. “고생했다, 나.”',
  ),

  PregnancyEntry(
    week: 12,
    dayLabel: '12주 3일',
    date: DateTime(2025, 10, 25),
    title: '검사와 걱정이 함께 있던 날',
    summary:
    '검사를 하러 병원에 다녀온 날. 결과를 기다리는 동안 괜히 불안하지만, 초음파에서 잘 자라고 있는 모습을 보고 조금은 안심했다.',
    symptoms: const Symptoms(
      nausea: 2,
      fatigue: 3,
      mood: 3,
    ),
    twinNote: const TwinNote(
      tree: '나무는 화면 속에서 제법 크게 자라 있었다. 손을 흔드는 것 같기도 했다.',
      fruit: '열매도 그 옆에서 꿀잠 자는 것처럼 보였다. 둘 다 너무 사랑스럽다.',
    ),
    memo: '검사 결과가 잘 나오길 바라는 마음으로 하루 종일 핸드폰만 쳐다봤다.',
  ),

  // 13주
  PregnancyEntry(
    week: 13,
    dayLabel: '13주 1일',
    date: DateTime(2025, 10, 30),
    title: '쌍둥이 심장 소리를 처음 들은 날 💓💓',
    summary:
    '오늘 처음으로 나무와 열매의 심장 소리를 제대로 들었다. 두 개의 작은 심장이 빠르게 뛰는 소리가 아직도 귀에서 맴돈다.',
    symptoms: const Symptoms(
      nausea: 3,
      fatigue: 3,
      mood: 4,
    ),
    twinNote: const TwinNote(
      tree: '나무 심장 박동이 규칙적이고 힘차다고 했다. 작은 나무가 쑥쑥 자라는 중 🌳',
      fruit: '열매 심장도 잘 뛰고 있다고 해서 안심했다. 두 아이가 같은 배 속에서 같이 뛰고 있다니 신기하다 🍎',
    ),
    memo: '초음파실에서 심장 소리를 들으면서 눈물이 조금 났다. 진짜 우리 아이들이구나 싶었다.',
  ),

  // 14주
  PregnancyEntry(
    week: 14,
    dayLabel: '14주 0일',
    date: DateTime(2025, 11, 5),
    title: '입덧이 조금은 가라앉은 것 같은 날',
    summary:
    '며칠 전보다 속이 조금 편해져서 오랜만에 밥을 천천히 먹을 수 있었다. 아직 완전히 괜찮은 건 아니지만, 그래도 희망이 보이는 느낌.',
    symptoms: const Symptoms(
      nausea: 2,
      fatigue: 2,
      mood: 4,
    ),
    twinNote: const TwinNote(
      tree: '나무는 여전히 잘 자라고 있다고 한다. 엄마가 밥을 조금 더 먹어서 기분 좋을 듯.',
      fruit: '열매도 조용히 따라 자라는 중. 두 아이 모두 엄마가 잘 먹는 걸 좋아할 거야.',
    ),
    memo: '이대로 입덧이 서서히 끝나면 좋겠다. 평범하게 밥 먹고 산책하는 하루가 그립다.',
  ),

  PregnancyEntry(
    week: 14,
    dayLabel: '14주 4일',
    date: DateTime(2025, 11, 9),
    title: '조금 많이 걸었더니 생식기 쪽이 콕콕했던 날',
    summary:
    '오늘은 좀 많이 걸었더니 아랫배와 사타구니 쪽이 콕콕 쑤셨다. 잠깐 쉬었더니 나아졌지만, 몸이 예전 같지는 않다는 걸 느꼈다.',
    symptoms: const Symptoms(
      nausea: 2,
      fatigue: 3,
      mood: 3,
    ),
    twinNote: const TwinNote(
      tree: '나무는 엄마가 걸을 때 같이 흔들렸을까? 무리하지 말라는 신호였던 것 같기도 하다.',
      fruit: '열매도 조용히 있었을 텐데, 엄마가 쉬어줘서 다행이다. 두 아이 모두 엄마가 너무 무리하지 않으면 좋겠다.',
    ),
    memo: '이제는 예전처럼 마음대로 뛰거나 급하게 움직이면 안 되겠다는 걸 다시 느꼈다.',
  ),

  // 15주
  PregnancyEntry(
    week: 15,
    dayLabel: '15주 0일',
    date: DateTime(2025, 11, 17),
    title: '사타구니가 콕콕해서 깜짝 놀란 날',
    summary:
    '아침에 일어났는데 사타구니 쪽이 콕콕 쑤셔서 순간 놀랐다. 조금 쉬고 나니 괜찮아졌고, 아이들은 잘 있다고 해서 안심.',
    symptoms: const Symptoms(
      nausea: 2,
      fatigue: 3,
      mood: 3,
    ),
    twinNote: const TwinNote(
      tree: '나무는 더 아래쪽으로 자리를 잡아가고 있나 보다. 자리 잡느라 바쁜 느낌 🌳',
      fruit: '열매도 배 아래 쪽에서 같이 자리 잡는 중일 것 같다. 둘이 나란히 누워있는 상상을 해본다.',
    ),
    memo: '조금만 이상해도 걱정이 된다. 그래도 검사 결과가 괜찮으면 다시 안심을 한다. 이게 임신의 반복인 것 같다.',
  ),

  PregnancyEntry(
    week: 15,
    dayLabel: '15주 3일',
    date: DateTime(2025, 11, 21),
    title: '한 명은 아들 확정, 한 명은 수줍은 열매 🍎',
    summary:
    '오늘 초음파에서 나무와 열매를 다시 만났다. 나무는 활발하게 움직이고, 열매는 다리를 꼭 모으고 있어서 성별이 아직 안 보였다.',
    symptoms: const Symptoms(
      nausea: 2,
      fatigue: 3,
      mood: 4,
    ),
    twinNote: const TwinNote(
      tree: '심장 소리 튼튼하고 움직임이 활발했다. 초음파 사진에서도 계속 꼬물꼬물 🌳',
      fruit: '오늘도 다리를 오므리고 수줍은 열매. 그래도 의사 선생님이 건강해 보인다고 해줘서 안심 🍎',
    ),
    memo: '쌍둥이라는 게 아직도 신기하다. 둘 다 건강하게만 자라줬으면.',
  ),

  // 16주
  PregnancyEntry(
    week: 16,
    dayLabel: '16주 0일',
    date: DateTime(2025, 11, 24),
    title: '입덧이 다시 찾아온 날… 🤢',
    summary:
    '입덧이 조금 줄어든 줄 알았는데, 오늘 저녁 먹은 걸 다시 다 토하고 말았다. 윗배는 들어가고 아랫배만 볼록.',
    symptoms: const Symptoms(
      nausea: 4,
      fatigue: 4,
      mood: 2,
    ),
    twinNote: const TwinNote(
      tree: '나무는 여전히 잘 자라고 있다고 한다. 엄마가 토해서 미안하지만 잘 버텨주고 있어 고마워.',
      fruit: '열매도 같이 버티고 있는 중. 오늘은 사진을 못 봤지만, 둘이 같이 꼭 붙어있을 것 같아.',
    ),
    memo: '토하고 나니까 속은 조금 편해졌는데, 그래도 체력적으로 많이 힘들다. 그래도 아이들을 생각하면서 버텨본다.',
  ),

  PregnancyEntry(
    week: 16,
    dayLabel: '16주 2일',
    date: DateTime(2025, 11, 26),
    title: '입덧약 처방받은 날 💊',
    summary:
    '병원에서 입덧약을 다시 처방받았다. 임신성 비염 때문에 잠을 잘 못 잤는데, 약을 먹으니 숨도 조금 편하고 잠도 잘 왔다.',
    symptoms: const Symptoms(
      nausea: 3,
      fatigue: 3,
      mood: 3,
    ),
    twinNote: const TwinNote(
      tree: '나무는 약 덕분에 엄마가 더 잘 자서 좋을 것 같다. 엄마가 편해야 아기도 편하지 🌳',
      fruit: '열매도 조용히 잘 자라고 있을 거야. 코 막혀서 고생하던 엄마가 조금 덜 힘들었으면.',
    ),
    memo: '약에 너무 의존하지 않으려고 하지만, 잠을 전혀 못 자는 것보다는 이게 나은 것 같다.',
  ),

  // 17주 (살짝 미래 데이터)
  PregnancyEntry(
    week: 17,
    dayLabel: '17주 0일',
    date: DateTime(2025, 12, 1),
    title: '조금씩 태동이 느껴지는 것 같은 날 ✨',
    summary:
    '아직 확실하진 않지만, 배 속에서 작은 물결 같은 느낌이 스치고 지나갔다. 이게 혹시 나무와 열매의 태동일까?',
    symptoms: const Symptoms(
      nausea: 1,
      fatigue: 3,
      mood: 5,
    ),
    twinNote: const TwinNote(
      tree: '나무가 먼저 “엄마 나 여기 있어” 하고 신호를 보낸 것 같았다.',
      fruit: '열매도 곧 같이 인사를 해줄 것 같다. 두 아이를 더 빨리 만나고 싶은 마음이 커진 하루.',
    ),
    memo: '처음으로 태동인 것 같은 느낌을 받았다. 이 순간을 잊지 않으려고 이렇게 기록해둔다.',
  ),
];
