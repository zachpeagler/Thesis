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

Plant growth promoting bacteria are bacteria that have been shown to provide benefits to plants, and these benefits come in four large categories. They can be biofertilizers, allowing plants to access nutrients they otherwise wouldn't have been able to, via nitrogen fixation or phosphate solubilization. They can be phytostimulators, producing plant hormones that influence photosynthesis, such as auxins, giberellins, or cytokinins. They can be stress tolerance enhancers, enabling the plant to endure stress that it wouldn't be able to otherwise, via ACC Deaminase, which inhibits ethylene production in plants, with ethylene being another plant hormone, but one that is much more strongly associated with stress responses. They can also synthesis prolines, amines, or antioxidative enzymes, all of which can help the plant overcome stress. They can also be biopesticides, either by producing antibiotics (i know, bacteria producing antibiotics!) competitive exclusion, or systemic resistance.

It's important to note that while we have these general categories that we group PGPBs in, many of the specific mechanisms that PGPBs use are unknown.

## PGPBs used

Here you can see the different bacteria used in this study. We did 3 trials, one of the trials only using a single bacteria, Methylobacterium oryzae CBMB20, and the other two trials using all five of the bacteria seen here. Notice the modes of action for each one, in total we have 5 biofertilizers, 4 phytostimulators, 3 biocontrolers, and 2 stress tolerance enhancers.

But we can't just apply the bacteria and call it a day, there are factors that influence how successful the bacteria can be at providing benefits to a plant.

## Principles influencing bacterial success

There's the mass effect, a concept in community ecology about how a high density of a species in a favorable environment can facilitate the survival of that species in an unfavorable environment via dispersal.

We also have the priority effect, which basically states that if you're the first one to colonize an area, you have an advantage. You don't have to compete at first.

We also have the synergistic effect, which is where multiple PGPBs have been shown to be more effective together than when on their own.

## How to Quantify Bacterial Effects on Plants?

How do we know that the bacteria are having an effect?

Well, we measure the plants! While the plants are growing, we can take fluorescence parameters, which we'll talk more about in a second, and they tell us about how well the plant is able to photosynthesize.

We can also look for morphological changes, like the density of the stomates on a plant leaf.

We can also measure the thing we're really interesting in, the fruit! For measures of yield, we can look at how many fruit we have, the total mass of the fruit from our harvest, and what percent of the fruit have blossom-end rot. 

We can also look at fruit quality. When looking at fruit quality, what we're really interested in is the fruit mass, how big is it, and the fruit sugar content, how tasty is it.

Now, if we're doing a trial where we're not growing the plants to the point that they produce fruit, we can look at some other things to tell us about the relative health of the plant.

We can look at the plant growth, which we can measure simply by measuring the height of the plant, and we can also measure the plant's resource allocation, how much energy did it put into it's roots (the belowground section) versus its shoots (the aboveground section) and looking at the ratio of the length and mass of those can give us a good idea of how the plant is allocating its resources, at least early on in the growth cycle.

Now, I've talked a bit about stomates, but what is a stomate?

## Stomates

Stomates are little holes in a leaf that facilitate gas exchange. Carbon dioxide enters and water vapor and oxygen exit. We can measure the amount of water leaving a stomate, known as the stomatal conductance, and this gives us an idea as to the plant's water use and relative photosynthetic rate.

We're also interested in how efficient the plant is photosynthesizing, but to do that, we have to dive into the leaf a little bit more.

## Photosystem II

So, here we have our plant leaf, and if we zoom in we can see the individual plant cells, and inside those cells is a specialized organelle called the chloroplast, and that chloroplast has a whole bunch of little pancakes in it known as thylakoids. Photosynthesis occurs across the thylakoid membrane in a pair of protein complexes called Photosystems I and II.

The one we're concerned with is Photosystem II, which is where the plant takes in light and then uses that energy to split water molecules into hydrogen and oxygen, the hydroden then goes off into the electron transport chain, but we don't really care about that.

What we're interested in is the efficiency of photosystem II, and we measure this efficiency by bouncing light off of the leaf using a specialized device and doing a whole bunch of math that I'm going to spare you all from.

What we end up with is the Efficiency of Photosystem II, which is the proportion of light absorbed by PSII that is used in photosynthesis, and this is important for telling us about how efficiently the plant is photosynthesizing.

So now that we've got all the introductory topics out of the way, let's get into the hypotheses.

## Hypothesis 1 - Location

I hypothesized that combined soil and foliar inoculation of a single PGPB will increase salt stressed tomato plant fluorescence parameters, fruit quality, and fruit yield more than either soil or foliar inoculations

## Hypothesis 2 - Timing

My second hypothesis was that an encapsulated PGPB consortium inoculation at germination and transplantation will increase tomato plant fluorescence parameters, fruit quality, and fruit yield more than either germination or transplantation inoculations.

## Hypothesis 3 - Method

My third and final hypothesis was that tomato plants inoculated with an encapsulated PGPB consortium will increase tomato fluorescence parameters, plant growth, and resource allocation more than liquid inoculation or uninoculated granule.

## Methods
So how did we actually test these hypotheses?

## Trial 1 - Inoculant Location
To test hypothesis 1, we ran the inoculant location trial. From spring to fall of 2023 in the Hydroponic lab at the KSU field station.

We performed our inoculations row by row. Row A was the control with no inoculation, Row B was the soil inoculation, Row C was the foliar inoculation, and Row D was the joint inoculation.
We inoculated all the plants at transplantation, using a liquid spray for the foliar inoculation, which we made by taking our inoculant and putting it in a phosphate buffer solution and we sprayed the seedlings outside of the greenhouse immediately before transplanting. For our soil inoculation, we used our inoculated chitosan granule. All of the plants were salt stressed, and we had eight replicates per group, which at an effect size of 0.4 gave us a power of 0.39, which isn't great. Ideally you want a statistical power of 0.8 or above. And statistical power is the probability of detecting an effect.

## Trial 2 - Inoculant Timing

To test hypothesis 2, we ran the inoculant timing trial from spring to fall of 2024 in the Hydroponic lab at the KSU field station. This trial only used inoculated chitosan granules for inoculation at both germination and transplantation. This trial also eliminated salt stress as a variable, as we wanted to see if we could get increased fruit quality without the negative effects of salt stress.
We did our treatments Row-wise again with this trial, with Row A being the control, Row B being the transplantation, Row C being the germination inoculation, and Row D being the joint inoculation.
We also increased our replicates per group in this trial, going up from 8 to 12, bringing our statistical power up to 0.59 at an effect size of 0.4, which is still not ideal, but better than trial 1.

## Trial 3 - Inoculant Method
Finally, we have trial 3, the inoculant method trial that goes along with hypothesis 3. This trial was also run in 2024 and was run concurrently with Trial 2, but in a separate greenhouse. This trial was done in a smaller greenhouse on the KSU campus outside the science building. 
With this trial, we elected to not go for a row-wise experimental design, instead having two of each treatment per column and offsetting them by one with each row. The treatments on this trial were a control, a liquid inoculation of all five of our PGPBs, an uninoculated chitosan granule, and a chitosan granule with all five of our PGPBs. This trial was not as long as our previous trial, only going for a little over a month rather than the 6-7 months we did with trials 1 and 2, and this allowed us to massively increase our sample size up to 36 replicates per group, for a statistical power of 0.98 with an effect size of 0.4. 

## Greenhouse methods

We took biweekly fluorescence measurements with two devices, a PhotosynQ MultispeQ V2.0 and a Li-COR Li-600. THe MultispeQ is only capable of capturing one of our target fluorescence variables, the efficiency of photosystem II, while the Li-600 is capable of capturing both our target fluorescence variables, the efficiency of photosystem II and the stomatal conductance.

As for fruit, we harvested them when they ripened, as assessed visually by the color of the fruit, then measured their mass and sugar content and assessed them for blossom-end rot. Fruit that had blossom-end rot was not assessed for sugar content because they were deemed non-marketable.

For trial 3, we also the plant height biweekly with a ruler, and upon trial completion we destructively sampled the plants, measuring the length and mass of the aboveground section and belowground section.

## Data Methods

For this project's data analysis, I used almost entirely linear models, applying logit and log-normal transformations where necessary. For count data, such as the number of fruit, I used generalized linear models with poisson distributions.

Post hoc tests were generally Tukey HSD tests, but if the data was non-parametric I would use Dunn tests.

In the process of analyzing all this data, I found myself using the same code over and over again, and to me that was a clear sign that I should make that code into functions for repeatability and reliability. In the end, I made enough functions that it felt justified to bundle them all together into an R package, which I did, and now the R package ztils is available on CRAN, and you can load it straight into Rstudio.

## Results
just talk about the graphs 
bleh

## Discussion

## Hypothesis 1 Revisited
We predicted increases in fluorescence parameters, fruit quality, and fruit yield - and instead we saw mixed results in fluorescence parameters - with stomatal conductance decreasing but the efficiency of photosynthesis increasing. We predicted an increase in fruit quality, but instead we saw more mixed results there - the fruit being smaller but sweeter, with a higher sugar content. Finally, the fruit yield we expected to increase, but we saw it unequivocally decrease.

So why did we see these results?

## Hypothesis 1 revisited cont'd

Methylobacterium oryzae - the inoculant we tested in this hypothesis produces ACC deaminase which should inhibit the production of ethylene, another plant hormone that is essential for stress signaling. So it's possible that by decreasing the ethylene in the plant, we inadvertently reduced the plants capacity to respond to stress.

It's also possible that the phytohormone levels in the plant exceeded the optimal levels. Auxin produced by Methylobacterium oryzae and salt stress induces auxin production in the plant. It's possible that the combined effect of this auxin production caused the auxin levels in the plant outside of the save levels, inadvertently harming the plant.

## Hypothesis 2 revisited

For hypothesis 2, we predicted that fluorescence parameters, fruit quality, and fruit yield would increase when inoculated with an encapsulated PGPB consortium at germination and transplantation. 

We observed a decrease in stomatal conductance and an increase in photosynthetic efficiency. As for fruit variables, we saw no changes whatsoever.

Not only is this contrary to our predictions, it's also contrary to the results that are in the literature. 

So why is that?

## Hypothesis 2 revisited cont'd

We used five PGPBs here, and of those all five were biofertilizers, four were phytostimulators, so a lot of those bacteria filled similar niches and were likely to compete with one another rather than synergizing.

It's also possible that the chitosan-HCl-Tripolyphosphate polymer wasn't able to facilitate the release of the bacteria fast enough in order to achieve the priority effect we were looking for.

It's also possible that the bacteria overwhelmed the plant with phytohormones, increasing the level of auxins, cytokinins, and gibberellins outside of the healthy range, essentially negating any positive effects they could've provided the plant.

## Hypothesis 3 revisited

We used five PGPBs here, and of those all five were biofertilizers, four were phytostimulators, so a lot of those bacteria filled similar niches and were likely to compete with one another rather than synergizing.

In this trial we weren't using a hydroponic setup and the soil was not sterilized prior to the trial, so it's possible that the soil had microbes in it already, negating the benefits we would receive from the priority effect

It's also possible that the single inoculation we applied wasn't enough. If you look at other studies and existing commercial biofertilizers, they reapply their inoculants every two weeks. We didn't do that.

This last point is unlikely, but I thought I'd mention it to do my due diligence. We top-watered these plants, and it's possible that that top watering physically separated the inoculants from the seeds, preventing them from having an impact.

## Hypothesis 3 revisited cont'd