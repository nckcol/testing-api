# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

subjects = Subject.create([
    {
        title: 'General',
        description: 'Main category',
    },
    {
        title: 'Math',
        description: 'Science mother!',
    }
])

test = subjects[0].tests.create(
    {
        title: 'Biochemistry Test'
    }
)

questions = test.questions.create([
    {
        text: 'Amino acids required in the human diet and not synthesized by the body are called'
    },
    {
        text: 'The α-amino acids have a carboxyl group with a pK around __________ , and an amino group with a pK near __________ .'
    },
    {
        text: 'The correlation between free energy ΔG transfer between the aqueous/organic phases and the surface area of amino acid residues'
    },
    {
        text: 'Lymphocytes are activated by antigen in the'
    }
])

questions[0].answers.create([
    {
        text: 'specialized',
        correct: false
    },
    {
        text: 'trace',
        correct: false
    },
    {
        text: 'essential',
        correct: true
    },
    {
        text: 'accessory',
        correct: false
    }
])

questions[1].answers.create([
    {
        text: '1.1, and 12.1',
        correct: false
    },
    {
        text: '6.5, and 8.0',
        correct: false
    },
    {
        text: '3.3, and 10.5',
        correct: false
    },
    {
        text: '2.2, and 9.4',
        correct: true
    }
])

questions[2].answers.create([
    {
        text: 'reflects the reduction in solvent-accessible area during protein folding',
        correct: true
    },
    {
        text: 'is only meaningful for the polar amino acids',
        correct: false
    },
    {
        text: 'ignores the important contribution of the peptide bond',
        correct: false
    },
    {
        text: 'is similar to effects seen with SDS denaturation',
        correct: false
    }
])

questions[3].answers.create([
    {
        text: 'blood stream',
        correct: false
    },
    {
        text: 'bone marrow',
        correct: false
    },
    {
        text: 'liver',
        correct: false
    },
    {
        text: 'lymph nodes',
        correct: true
    }
])