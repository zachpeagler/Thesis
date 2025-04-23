# Thesis Script

## Intro slide

Hello everyone! Thank you for coming to my defense, I'm Zach Peagler, and I've been working on encapsulating biostimulants (microbes) and applying them to tomato plants. Much of my work was focused on improving the methodology for the creation of these granules, and the other half focused on the actual effects that these granules are capable of producing in tomato plants.

## App slide

I know how boring it can be to listen to someone talk about something you know nothing about for half an hour, so I wanted to give you all a way to interact with the data and see how I came to the conclusions that I did, and to facilitate that I built an app using R, which you can access either through that QR code or the link below it. A laptop is recommended over a phone, but it does work on mobile. Once you get to the webpage, give it a good 20-30 seconds to load, it can take awhile.

(give them a second to open the app)

## Why slide

The human population surpassed 8 billion recently, and is projected to hit almost 10 billion by 2050. A growing population necessitates a growing food supply, and the predominant method of increasing crop yield up until now is the use of synthetic fertilizers, chemically manufactured sources of phosphorous, nitogen, and potassium that greatly increased crop output. These synthetic fertilizers came with some downsides, including groundwater contamination, water body eutrophication, harmful algae blooms, and ecosystem disruption. These fertilizers are also expensive, accounting for 20-36% of a farm's budget, with these costs greatly increasing in the past several years. Sustainable agriculture solutions are necessary to alleviate the environmental and economic toll of synthetic fertilizers while feeding an expanding human population.

## What slide

We need sustainable agriculture solutions, but what does that look like? Many studies suggest the use of biostimulants, which include plant growth promoting bacteria (PGPBS), arbuscular mycorrhizal fungi, or biologically derived compounds such as humic acid, biochar, and kelp extract. 

In my research, I just focused on the plant growth promoting bacteria or PGPBs.

Biostimulants face challenges that hinder their wide-spread implementation. Chiefly among those is a lack of awareness. Many farmers don't know the effect that bacteria can have on their plants, and there is a stigma that bacteria are *only* pathogenic and detrimental to their crops. Additionally, biostimulant application methods leave much to be desired. They're often expensive, easily contaminated, and show unreliable performance in the field.
This is the problem I wanted to tackle in my research. How can we best apply PGPBs to plants?

## How slide

A new application method that has shown promise is encapsulation, where you combine the biostimulant with a polymer solution then drop that into a cross-linker solution, and the result is a biostimulant granule that can be dried for long-term storage and transport.

One polymer that has shown promise is chitosan, a biopolymer isolated from crustacean shells. This has an amine group (NH2) on it that can be protonated and then it can cross-link with a polyanion, such as tripolyphosphate. Sodium tripolyphosphate is used as a preservative in meat and is classified by the US FDA as Generally recognized as safe. It is also used in detergents, textiles, toothpaste, drug delivery, fermentation, and leather tanning.

Another possible polymer is alginate, a biopolymer isolated from algae, which has a carboxylic acid group on it that can react with a polycation, such as a calcium ion.

Both alginate and chitosan have had some studies done looking at their effects on plant growth, but most of the literature has been done with alginate, which made me curious to see how viable chitosan could be.

Some studies even suggest that encapsulation is necessary for PGPBs to achieve maximum effectiveness and viability while also being practical for agricultural implementation.

## Granule Development slide
So, I started where any good scientist starts - with the literature. I followed existing protocols to create chitosan granules, and was met with little success. Partially, this was due to the literature conflicting in many ways. Some papers used as little as 1% chitosan, some up to 5%. Some used equal parts chitosan and TPP, some used 1:4 chitosan to TPP. Some papers performed the solution combination while stirring the mixture, others performed it with the TPP solution over ice.

The key for me was changing the protonation acid. See, chitosan starts out with NH2 groups on it, and those NH2 groups must be protonated to NH3 in order for TPP to bind to them. In the literature, most authors were using acetic acid - a weak acid, and no matter the concentration of acetic acid I attmempted, beads would not form cleanly.

Finally, I stumbled across a paper that used hydrochloric acid rather than acetic acid, and this was the game changer.

## Acetic to HCl

The switch from acetic to hydrochloric acid was night and day for bead formation.

## Desiccation

Finally, we can take those beads and desiccate them, drastically reducing their weight and volume while retaining our microbial viability. This is an essential step of the process of developing a logistically feasible fertilizer, but desiccation also causes major stress to microbes. Desiccation induces oxidation stress from ROS buildup and can damage membranes, proteins, and DNA.

To combat this, we can slowly dry the granules out, giving the microbes time to acclimate to the desiccation and enable their endogenous stress response mechanisms. 

The desiccation in this study was done in a vacuum desiccation chamber at 30*C and 0.5 atm, but drying time is highly dependent on the amount of granules put into the desiccation chamber.

## CBG pic
Finally, we end up with these. Chitosan biostimulant granules.

So, we have our inoculation method we want to test out, but what are we going to apply it to?

## Model organism: Tomato

Tomatoes are the second most grown crop in the United States and represent a large part of commercial growing, and they have a really easily identifiable stress response, known as blossom-end rot. Blossom-end rot is caused by a calcium deficiency in the plant.

So we know what we're going to grow, but how are we going to grow it?

## Semi-Hydroponic growing

We used semi-hydroponic growing in 2 of the 3 trials we performed. This method of cultivation uses an inert soil-like media along with a liquid nutrient solution, and has several advantages over traditional soil cultivation, including increased lang, nutrient, and water use efficiency, higher fruit yield, and no fertilizer loss to the environment. However, this often comes at the cost of decreased fruit quality.

So how can we increase the fruit quality? We can use salt!

## Salt stress

Salt stress has a variety of effects on plants, including decreased yield, increased blossom-end rot, and increased fruit quality.

So when growing tomatoes in a semi-hydroponic system with salt stress, we have a quality-quantity tradeoff. But what if we used our biostimulants to offset that tradeoff? 
This is where plang growth promoting bacteria come in

## Plant Growth Promoting Bacteria

## Principles influencing bacterial success

## Stomates

## Photosystem II

## Hypothesis 1 - Location

## Inoculant Location Trial

## Greenhouse methods

## Data Methods