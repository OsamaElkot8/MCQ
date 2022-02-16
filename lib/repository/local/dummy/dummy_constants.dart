class DummyConstants {
  static const String keyQuestion = 'question';
  static const String keyChoices = 'choices';
  static const String keyCorrectAnswer = 'correct_answer';

  static const List<Map<String, dynamic>> questions = [
    {
      keyQuestion: 'What type of animal is a seahorse?',
      keyChoices: ['Crustacean', 'Arachnid', 'Fish', 'Shell'],
      keyCorrectAnswer: 'Fish'
    },
    {
      keyQuestion: 'Which of the following dog breeds is the smallest?',
      keyChoices: ['Dachshund', 'Poodle', 'Pomeranian', 'Chihuahua'],
      keyCorrectAnswer: 'Chihuahua'
    },
    {
      keyQuestion: 'What color are zebras?',
      keyChoices: [
        'White with black stripes',
        'Black with white stripes',
        'Both of the above',
        'None of the above'
      ],
      keyCorrectAnswer: 'Black with white stripes'
    },
    {
      keyQuestion: 'What existing bird has the largest wingspan?',
      keyChoices: ['Stork', 'Swan', 'Condor', 'Albatross'],
      keyCorrectAnswer: 'Albatross'
    },
    {
      keyQuestion: 'What is the biggest animal that has ever lived?',
      keyChoices: [
        'Blue whale',
        'African elephant',
        'Apatosaurus (aka Brontosaurus)',
        'Spinosaurus'
      ],
      keyCorrectAnswer: 'Blue whale'
    }
  ];
}
