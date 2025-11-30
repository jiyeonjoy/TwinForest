import 'package:get/get.dart';
import 'package:twin_forest/app/timeline/data/pregnancy_entry_data.dart';

class TimelinePageController extends GetxController {
  static TimelinePageController get to => Get.find();

  final List<PregnancyEntry> sampleEntries = [
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
  ];
}
