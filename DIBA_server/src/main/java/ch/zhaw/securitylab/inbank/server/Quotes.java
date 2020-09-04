package ch.zhaw.securitylab.inbank.server;

import ch.zhaw.securitylab.inbank.server.user.Message;

import java.security.SecureRandom;
import java.util.Random;

public class Quotes {
	private static Random random = new SecureRandom();
	private static final int VIEW_TYPE = 2;

	public static Message getRandomQuote() {
		int rnd = random.nextInt(getQuoteSize());
		return new Message(getQuoteNr(rnd), VIEW_TYPE, System.currentTimeMillis());
	}

	public static Message getRandomHint() {
		int rnd = random.nextInt(HINTS.length);
		return new Message(HINTS[rnd] , VIEW_TYPE, System.currentTimeMillis());
	}

	public static Message getAnswer42(String email) {
		return new Message("Dear " + email + "\n" +
				"We already know the answer.\n" +
				"If you find the question feel free to contact us again.\n\n" +
				"Best Regards\n" +
				"The White Mice",
				VIEW_TYPE, System.currentTimeMillis()
		);
	}

	public static Message getStartMessage() {
		return new Message("Greetings User\n\n" +
				"We are happy, that you try to hack our app.\n" +
				"If you need help, send the message 'hint' to the server\n\n" +
				"Best Regards\n" +
				"The DIBA developer team",
				VIEW_TYPE, System.currentTimeMillis()
		);
	}


	public static int getQuoteSize() {
		return MAKING_MONEY_PRATCHETT.length;
	}

	private static String getQuoteNr(int number) {
		return MAKING_MONEY_PRATCHETT[number] + "\n Making Money, Terry Pratchett";
	}

	private static final String[] HINTS = {
		"Sometimes the ADB can be helpful.",
		"We are sure you tried decompilation already, so this hint is totally useless.",
		"Have you read our manifest?",
		"Screenshots bring enlightenment",
		"Internal structures reveal many secrets.",
		"Do you sometimes Log strange things too?",
		"Sometimes we wonder why not everyone uses prepared statements",
		"Clipboards are very helpful if used correctly.",
		"TLS implementation was really a pain in older android versions.\n" +
				"You can believe us, we have tried it.",
		"Checking things in the app is really useful, don't you think?",
		"Today nobody would fail with the login.",
		"Where did we place that secret...?",
		"Im pretty sure we implemented all Logout buttons the same way.",
		"Strange back button behaviour. It's a feature not a bug.",
		"Touch screens are great. Nobody can see where clicking is useful.",
		"Du you know THE answer?\n" +
				"Ps. we love 'The Hitchhiker's Guide to the Galaxy'.",
		"Some hints are just useless, take this one for example.\n" +
				"It's total useless.\n" +
				"No don't think about it's use, I told you it's useless.\n\n\n" +
				"Ok, ok. Hear is your hint.\n" +
				"Have you ever wondered what the server is doing all the time?\n" +
				"He's very lazy. He refuses to do the most basic tasks."
	};
	
	private static final String[] MAKING_MONEY_PRATCHETT = {
		"...nervousness runs through pigeons faster than a streaker through a convent ...",
		"There are times when 'It does not get any better than this' does not spring to mind.",
		"... luck came to those who left a space for it –",
		"All the way to Genua there were people who'd been duped, fooled, swindled and cheated by that face.  The only thing he hadn't done was hornswoggle, and that was only because he hadn't found out how to.",
		"'... this may well have been a case where chilly logic should have been replaced by the common sense of, perhaps, the average chicken.'",
		"There were meetings.  There were always meetings.  And they were dull, which is part of the reason they were meetings.  Dull likes company.",
		"He was a responsible authority, and people could use terms like 'core values' at him with impunity.",
		"What harm can it do to find out?  It's a question that has left bruises down the centuries, even more that 'It can't hurt if I only take one' and 'It's all right if you only do it standing up.'",
		"It would be hard to imagine an uglier building that hadn't won a major architectural award.",
		"... people lower their voices in the presence of large sums of money.",
		"... his presence was like a lead weight on a rubber sheet.  It distorted the space around it.  People didn't immediately see him, but they sensed his presence.",
		"What we have here, he told himself, is a Mk1 Feisty Old Lady: turkey neck, embarrassing sense of humour, a gleeful pleasure in mild cruelty, direct way of speaking that flirts with rudeness and, more importantly, flirts with flirting.  Likes to think she's no 'lady'.  Game for anything that doesn't carry a risk of falling over ...",
		"'... people like us always keep at least one inner self for inquisitive visitors, don't we?'",
		"'... a mistress was expected to be a woman of accomplishment in those days.'  She sighed.  'Now, of course, the ability to spin upside down around a pole seems to be sufficient.'",
		"'My late husband always said that the only way to make money out of poor people is by keeping them poor.'",
		"'An error, sir, is worse than a sin, the reason being that a sin is often a matter of opinion or viewpoint or even of timing but an error is a fact and it cries out for correction.'",
		"'... words are soft and can be pummeled into different meanings by a skilled tongue.  Numbers are hard.  Oh, you can cheat with them but you cannot change their nature.'",
		"... Hubert is one of those names you can put a shape to.  There may well be tall, slim Hubert, Moist would be the first to agree, but this Hubert was shaped like a proper Hubert, which is to say, stubby and plump.",
		"Hubert grasped the lapels of his jacket, as if addressing a meeting, and swelled with the urge to communicate, or at least talk at length in the belief that it was the same thing.",
		"... there's no such thing as too much flattery where mothers are concerned ...",
		"Whoever said you can't fool an honest man wasn't one.",
		"His teeth tried to tell him something, but he never listened to them.  A man could go mad, listening to his teeth.",
		"Funny, that: a brigand for a father was something to keep quiet about, but a slave-taking pirate for a great-great-great-grandfather was something to boast of over the port.",
		"He was extremely good at delegating.  But the talent requires people on the other end of the chain to be good at being delegated on to.",
		"... there were in fact enough skeletons in his closet to fill a big crypt, with enough left over to equip a funfair House of Horrors and maybe also make a macabre but mildly amusing ashtray.",
		"Vetinari just used stick, or hit you over the head with the carrot.",
		"'Cunning can do duty for thought up to a point, and then you die.'",
		"'I can assure you that if I had, as your ill-assumed street patois has it, \"dropped you in it\" you would fully understand all meanings of \"drop\" and have an unenviable knowledge of \"it\"'.",
		"'The city bleeds, Mr Lipwig, and you are the clot I need.'",
		"The lady in the boardroom was certainly an attractive woman, but since she worked for the Times Moist felt unable to award her total ladylike status.  Ladies didn't fiendishly quote exactly what you said but didn't exactly mean, or hit you around the ears with unexpectedly difficult questions.  Well, come to think of it, they did, quite often, but she got paid for it.",
		"... if you could sell the dream to enough people, no one dared wake up.",
		"... she was easy to confide in because she never bothered to listen.  She used the time to think about what to say next.",
		"That was the trouble with slow people.  Give him a fool any day.  Slow people took some time to catch up, but when they did they rolled right over you.",
		"'There are, some like to suggest, an infinite number of universes in order to allow everything that may happen a place to happen in.  This is of course nonsense, which we entertain only because we believe words are the same as reality.  Now, however, I can prove my point, since in such an infinity of worlds there would have to be one where I would applaud your recent action and, let me assure you, sir, infinity is not that big!'",
		"... Pucci Lavish swept in.  Or, at least, tried to sweep.  But a good sweep needs planning, and probably a rehearsal.  You shouldn't just go for it and hope.  All you get is a lot of shoving.",
		"... true style comes from innate cunning and mendacity.  You can't buy it.",
		"... the girl could flounce better than a fat turkey on a trampoline.",
		"Am I really a bastard or am I just really good at thinking like one?",
		"'You're more full of bullshit than a frightened herd on fresh pasture, Mr Lipwig.' 'Thank you, sir.  I'll take that as a compliment.'",
		"'... people don't like change.  But make the change happen fast enough and you go from one type of normal to another.'",
		"Building a temple didn't mean you believed in gods, it just meant you believed in architecture.",
		"'I'm an Igor, thur.  We don't athk quethtionth.' 'Really? Why not?' 'I don't know, thur.  I didn't athk.'",
		"'Stand still and your mistakes catch up with you!'",
		"... a weapon you held and didn't know how to use belonged to your enemy.",
		"'That is a very graphic analogy which aids understanding wonderfully while being, strictly speaking, wrong in every possible way' ...",
		"'The Arts are not my field,' he added, in a way that suggested his was a pretty superior field with much better flowers in it.",
		"When you have been a possession, then you really understand what freedom means, in all its magnificent terror.",
		"'Your not going to tell me they built fifty-foot high killer golems, are you?' 'Only a man would think of that.' 'It's our job,' said Moist.",
		"'There's no need to get hysterical,' said Adora Belle. 'Yes there is!  What there isn't a need for is staying calm!'",
		"... there was nothing you could do about a woman like that.  She just turned herself into a hammer and you ran right into her. Fortunately.",
		"'Necromancy is a Fine Art?' said Moist. 'None finer, young man.  Get things just a tiny bit wrong and the spirits of the vengeful dead may enter your head via your ears and blow your brains out down your nose.'",
		"'You flirt with people all the time.  You flirt with the whole world!  That's what makes you interesting, because you're more like a musician than a thief.  You want to play the world, especially the fiddly bits.'",
		"She had the slightly wistful, slightly hungry look that so many women of a certain age wore when they'd decided to trust in gods because of the absolute impossibility of continuing to trust in men.",
		"'Numbers are easy to outwit.  They can't think back.  The people who devise the crosswords, now they are indeed devious.'",
		"'Hubert's an economist.  That's like an alchemist, but less messy.'",
		"'Is Hubert quite ... normal?' said Adora Belle, as they climbed the marble staircases towards dinner. 'By the standards of obsessive men who don't get out into the sunlight?' said Moist.  'Pretty normal, I'd say.' 'But he acted as if he'd never seen a woman before!' 'He's just not used to things that don't come with a manual,' said Moist.",
		"Talking to the Watch was like tap-dancing on a landslide.  If you were nimble you could stay upright, but you couldn't steer and there were no brakes and you just knew that it was going to end in a certain amount of fuss.",
		" ... trolls didn't have a word for machismo in the same way that puddles don't have a word for water.",
		"'Commander Vimes says, when life hands you a mess of spaghetti, just keep pulling until you find the meatball.'",
		"The price of a good woman was proverbially above rubies, so a skillfully bad one was presumably worth a lot more.",
		"'They're paid to be ogled at,' said Moist.  'They are professional ogles.  It's an ogling establishment.  For oglers.'",
		"'... it's not what you say, it's the way you say it, isn't it?  Sooner or later it's all about style.'",
		"What the Iron Maiden was to stupid tyrants, the committee was to Lord Vetinari; it was only slightly more expensive, far less messy, considerably more efficient and, best of all, you had to force people to climb inside the Iron Maiden.",
		"'I love democracy.  I could listen to it all day.'",
		"'What is the worth of a gold coin compared to the dexterity of the hand that holds it?'",
		"'Even tyrants have to obey the law.'  He paused, looking thoughtful, and continued: 'No, I tell a lie, tyrants do not have to obey the law, obviously, but they do have to observe the niceties.'",
		"There was a rumour that the sword in the stick had been made with the iron taken from the blood of a thousand men.  It seemed a waste, thought Moist, when for a bit of extra work you could get enough to make a ploughshare.",
		"... she'd spent the night in a man's bedroom, and Lady Deidre Waggon had a lot to say about that.  She was technically a Ruined Woman, which seemed unfair given that, even more technically, she wasn't.",
		"'You think the ringmaster runs the circus, do you?  Only by the consent of the clowns, Mr Lipwig!  Only by the consent of the clowns!'",
		"If a battle goddess were allowed to have a respectable blouse and hair rapidly escaping from a tight bun, then Miss Drapes could have been deified.",
		"... trouble hit Mr Lipwig like a big wave hitting a flotilla of ducks.  Afterwards there was no wave but there was still a lot of duck.",
		"'You get a wonderful view from the point of no return.'",
		"... Spike could move like a snake trying to sashay, and the severe, tight and ostensibly modest dresses she wore left everything to the imagination, which is much more inflammatory than leaving nothing.  Speculation is always more interesting than facts."};
}
