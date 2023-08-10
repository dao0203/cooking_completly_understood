import 'package:cooking_completly_understood/ui/state/recipe_by_id_state.dart';
import 'package:cooking_completly_understood/utils/constants.dart';
import 'package:cooking_completly_understood/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RecipePreview extends HookConsumerWidget {
  const RecipePreview(this.recipeId, {super.key});
  final int recipeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipeByIdState = ref.watch(recipeByIdStateProvider(recipeId));
    return recipeByIdState.when(
      data: (recipe) {
        return Container(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
          ),
          child: Column(
            children: [
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 32,
                    height: 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Theme.of(context)
                          .colorScheme
                          .outline
                          .withOpacity(0.8),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Column(
                  children: [
                    //レシピ名
                    Text(
                      recipe.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                    //レシピの説明
                    Text(
                      recipe.description,
                      style: TextStyle(
                        // fontSize: 15,
                        color: Theme.of(context)
                            .colorScheme
                            .onBackground
                            .withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Divider(
                color:
                    Theme.of(context).colorScheme.onBackground.withOpacity(0.2),
                height: 1,
                thickness: 1,
                indent: 0,
                endIndent: 0,
              ),
              SizedBox(
                height: 300,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Column(
                      children: [
                        const SizedBox(height: 24),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              '材料',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            ...recipe.ingredientNames.map((ingredient) {
                              return Text(
                                ingredient,
                              );
                            }).toList(),
                            const SizedBox(height: 24),
                            const Text(
                              '手順',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ...recipe.stepDescriptions
                                .asMap()
                                .entries
                                .map((entry) {
                              final stepNumber = entry.key + 1;
                              final stepDescription = entry.value;
                              return ListTile(
                                leading: Text(
                                  '$stepNumber',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                title: Text(
                                  stepDescription,
                                ),
                              );
                            }).toList(),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Icon(
                              Icons.info_outline_rounded,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onBackground
                                  .withOpacity(0.5),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '栄養素など',
                              style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onBackground
                                    .withOpacity(0.75),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Text(
                              'カロリー: ',
                              style: TextStyle(),
                            ),
                            //レシピのカロリー
                            Text(
                              recipe.calorie.toString(),
                              style: const TextStyle(),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'タンパク質: ',
                              style: TextStyle(),
                            ),
                            //レシピのタンパク質
                            Text(
                              recipe.protein.toString(),
                              style: const TextStyle(),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              '脂質: ',
                              style: TextStyle(),
                            ),
                            //レシピの脂質
                            Text(
                              recipe.fat.toString(),
                              style: const TextStyle(),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              '炭水化物: ',
                              style: TextStyle(),
                            ),
                            //レシピの炭水化物
                            Text(
                              recipe.carbohydrate.toString(),
                              style: const TextStyle(),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              '塩分: ',
                              style: TextStyle(),
                            ),
                            //レシピの塩分
                            Text(
                              recipe.salt.toString(),
                              style: const TextStyle(),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                color:
                    Theme.of(context).colorScheme.onBackground.withOpacity(0.2),
                height: 1,
                thickness: 1,
                indent: 0,
                endIndent: 0,
              ),
              const SizedBox(height: 8),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //星のアイコンを表示
                      TextButton.icon(
                        icon: Icon(
                          recipe.isFavorite
                              ? Icons.star_rounded
                              : Icons.star_border_rounded,
                          color: recipe.isFavorite
                              ? alphaBlend(
                                  favoriteColor.withOpacity(0.5),
                                  Theme.of(context).colorScheme.onBackground,
                                )
                              : Theme.of(context)
                                  .colorScheme
                                  .onBackground
                                  .withOpacity(0.5),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: recipe.isFavorite
                              ? favoriteColor.withOpacity(0.08)
                              : Theme.of(context).colorScheme.surfaceVariant,
                        ),
                        label: recipe.isFavorite
                            ? const Text('お気に入り済み')
                            : const Text('お気に入りに追加'),
                        onPressed: () {
                          ref
                              .read(recipeByIdStateProvider(recipeId).notifier)
                              .changeFavoriteStatus(recipe);
                        },
                      ),
                      const SizedBox(width: 20),
                      //チェックのアイコンを表示
                      TextButton.icon(
                        icon: Icon(
                          Icons.check_rounded,
                          color: recipe.isMade
                              ? alphaBlend(
                                  madeColor.withOpacity(0.5),
                                  Theme.of(context).colorScheme.onBackground,
                                )
                              : Theme.of(context)
                                  .colorScheme
                                  .onBackground
                                  .withOpacity(0.5),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: recipe.isMade
                              ? madeColor.withOpacity(0.08)
                              : Theme.of(context).colorScheme.surfaceVariant,
                        ),
                        label: recipe.isMade
                            ? const Text('調理済み')
                            : const Text('調理済みにする'),
                        onPressed: () {
                          ref
                              .read(recipeByIdStateProvider(recipeId).notifier)
                              .changeMadeStatus(recipe);
                        },
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12),
            ],
          ),
        );
        // StreamBuilder(
        //   stream: recipeState,
        //   builder: (context, snapshot) {
        //     if (!snapshot.hasData) {
        //       return const Center(
        //         child: CircularProgressIndicator(),
        //       );
        //     } else if (snapshot.hasError) {
        //       return const Center(
        //         child: Text("エラーが発生しました"),
        //       );
        //     } else {
        //       final recipe = snapshot.data!;
        //       return ListView.builder(
        //         shrinkWrap: true,
        //         physics: const NeverScrollableScrollPhysics(),
        //         itemCount: 1, //レシピは1つしかないので1
        //         itemBuilder: (context, index) {
        //           final recipeContent = recipe[index];
        //           return Container(
        //             constraints: BoxConstraints(
        //               minWidth: MediaQuery.of(context).size.width,
        //             ),
        //             child: Column(
        //               children: [
        //                 const SizedBox(height: 16),
        //                 Row(
        //                   mainAxisAlignment: MainAxisAlignment.center,
        //                   children: [
        //                     Container(
        //                       width: 32,
        //                       height: 4,
        //                       decoration: BoxDecoration(
        //                         borderRadius: BorderRadius.circular(2),
        //                         color: Theme.of(context)
        //                             .colorScheme
        //                             .outline
        //                             .withOpacity(0.8),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //                 const SizedBox(height: 12),
        //                 Padding(
        //                   padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        //                   child: Column(
        //                     children: [
        //                       //レシピ名
        //                       Text(
        //                         recipe[index].name,
        //                         style: TextStyle(
        //                           fontSize: 20,
        //                           fontWeight: FontWeight.bold,
        //                           color: Theme.of(context)
        //                               .colorScheme
        //                               .onBackground,
        //                         ),
        //                       ),
        //                       //レシピの説明
        //                       Text(
        //                         recipe[index].description,
        //                         style: TextStyle(
        //                           // fontSize: 15,
        //                           color: Theme.of(context)
        //                               .colorScheme
        //                               .onBackground
        //                               .withOpacity(0.5),
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ),
        //                 const SizedBox(height: 16),
        //                 Divider(
        //                   color: Theme.of(context)
        //                       .colorScheme
        //                       .onBackground
        //                       .withOpacity(0.2),
        //                   height: 1,
        //                   thickness: 1,
        //                   indent: 0,
        //                   endIndent: 0,
        //                 ),
        //                 SizedBox(
        //                   height: 300,
        //                   child: SingleChildScrollView(
        //                     child: Padding(
        //                       padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        //                       child: Column(
        //                         children: [
        //                           const SizedBox(height: 24),
        //                           Column(
        //                             crossAxisAlignment:
        //                                 CrossAxisAlignment.start,
        //                             children: <Widget>[
        //                               const Text(
        //                                 '材料',
        //                                 style: TextStyle(
        //                                   fontSize: 16,
        //                                   fontWeight: FontWeight.bold,
        //                                 ),
        //                               ),
        //                               const SizedBox(height: 10),
        //                               ...recipe[index]
        //                                   .ingredientName
        //                                   .map((ingredient) {
        //                                 return Text(
        //                                   ingredient,
        //                                 );
        //                               }).toList(),
        //                               const SizedBox(height: 24),
        //                               const Text(
        //                                 '手順',
        //                                 style: TextStyle(
        //                                   fontSize: 16,
        //                                   fontWeight: FontWeight.bold,
        //                                 ),
        //                               ),
        //                               ...recipe[index]
        //                                   .stepDescription
        //                                   .asMap()
        //                                   .entries
        //                                   .map((entry) {
        //                                 final stepNumber = entry.key + 1;
        //                                 final stepDescription = entry.value;
        //                                 return ListTile(
        //                                   leading: Text(
        //                                     '$stepNumber',
        //                                     style: const TextStyle(
        //                                       fontWeight: FontWeight.bold,
        //                                       fontSize: 16,
        //                                     ),
        //                                   ),
        //                                   title: Text(
        //                                     stepDescription,
        //                                   ),
        //                                 );
        //                               }).toList(),
        //                             ],
        //                           ),
        //                           const SizedBox(height: 20),
        //                           Row(
        //                             children: [
        //                               Icon(
        //                                 Icons.info_outline_rounded,
        //                                 color: Theme.of(context)
        //                                     .colorScheme
        //                                     .onBackground
        //                                     .withOpacity(0.5),
        //                               ),
        //                               const SizedBox(width: 8),
        //                               Text(
        //                                 '栄養素など',
        //                                 style: TextStyle(
        //                                   color: Theme.of(context)
        //                                       .colorScheme
        //                                       .onBackground
        //                                       .withOpacity(0.75),
        //                                 ),
        //                               ),
        //                             ],
        //                           ),
        //                           const SizedBox(height: 8),
        //                           Row(
        //                             children: [
        //                               const Text(
        //                                 'カロリー: ',
        //                                 style: TextStyle(),
        //                               ),
        //                               //レシピのカロリー
        //                               Text(
        //                                 recipe[index].calorie.toString(),
        //                                 style: const TextStyle(),
        //                               ),
        //                             ],
        //                           ),
        //                           Row(
        //                             children: [
        //                               const Text(
        //                                 'タンパク質: ',
        //                                 style: TextStyle(),
        //                               ),
        //                               //レシピのタンパク質
        //                               Text(
        //                                 recipe[index].protein.toString(),
        //                                 style: const TextStyle(),
        //                               ),
        //                             ],
        //                           ),
        //                           Row(
        //                             children: [
        //                               const Text(
        //                                 '脂質: ',
        //                                 style: TextStyle(),
        //                               ),
        //                               //レシピの脂質
        //                               Text(
        //                                 recipe[index].fat.toString(),
        //                                 style: const TextStyle(),
        //                               ),
        //                             ],
        //                           ),
        //                           Row(
        //                             children: [
        //                               const Text(
        //                                 '炭水化物: ',
        //                                 style: TextStyle(),
        //                               ),
        //                               //レシピの炭水化物
        //                               Text(
        //                                 recipe[index].carbohydrate.toString(),
        //                                 style: const TextStyle(),
        //                               ),
        //                             ],
        //                           ),
        //                           Row(
        //                             children: [
        //                               const Text(
        //                                 '塩分: ',
        //                                 style: TextStyle(),
        //                               ),
        //                               //レシピの塩分
        //                               Text(
        //                                 recipe[index].salt.toString(),
        //                                 style: const TextStyle(),
        //                               ),
        //                             ],
        //                           ),
        //                           const SizedBox(height: 8),
        //                         ],
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //                 Divider(
        //                   color: Theme.of(context)
        //                       .colorScheme
        //                       .onBackground
        //                       .withOpacity(0.2),
        //                   height: 1,
        //                   thickness: 1,
        //                   indent: 0,
        //                   endIndent: 0,
        //                 ),
        //                 const SizedBox(height: 8),
        //                 Column(
        //                   children: [
        //                     Row(
        //                       mainAxisAlignment: MainAxisAlignment.center,
        //                       children: [
        //                         //星のアイコンを表示
        //                         TextButton.icon(
        //                           icon: Icon(
        //                             recipeContent.isFavorite
        //                                 ? Icons.star_rounded
        //                                 : Icons.star_border_rounded,
        //                             color: recipeContent.isFavorite
        //                                 ? alphaBlend(
        //                                     favoriteColor.withOpacity(0.5),
        //                                     Theme.of(context)
        //                                         .colorScheme
        //                                         .onBackground,
        //                                   )
        //                                 : Theme.of(context)
        //                                     .colorScheme
        //                                     .onBackground
        //                                     .withOpacity(0.5),
        //                           ),
        //                           style: TextButton.styleFrom(
        //                             backgroundColor: recipeContent.isFavorite
        //                                 ? favoriteColor.withOpacity(0.08)
        //                                 : Theme.of(context)
        //                                     .colorScheme
        //                                     .surfaceVariant,
        //                           ),
        //                           label: recipeContent.isFavorite
        //                               ? const Text('お気に入り済み')
        //                               : const Text('お気に入りに追加'),
        //                           onPressed: () {
        //                             ref
        //                                 .read(recipeByIdStateProvider(recipeId)
        //                                     .notifier)
        //                                 .changeFavoriteStatus(recipeContent);
        //                           },
        //                         ),
        //                         const SizedBox(width: 20),
        //                         //チェックのアイコンを表示
        //                         TextButton.icon(
        //                           icon: Icon(
        //                             Icons.check_rounded,
        //                             color: recipeContent.isMade
        //                                 ? alphaBlend(
        //                                     madeColor.withOpacity(0.5),
        //                                     Theme.of(context)
        //                                         .colorScheme
        //                                         .onBackground,
        //                                   )
        //                                 : Theme.of(context)
        //                                     .colorScheme
        //                                     .onBackground
        //                                     .withOpacity(0.5),
        //                           ),
        //                           style: TextButton.styleFrom(
        //                             backgroundColor: recipeContent.isMade
        //                                 ? madeColor.withOpacity(0.08)
        //                                 : Theme.of(context)
        //                                     .colorScheme
        //                                     .surfaceVariant,
        //                           ),
        //                           label: recipeContent.isMade
        //                               ? const Text('調理済み')
        //                               : const Text('調理済みにする'),
        //                           onPressed: () {
        //                             ref
        //                                 .read(recipeByIdStateProvider(recipeId)
        //                                     .notifier)
        //                                 .changeMadeStatus(recipeContent);
        //                           },
        //                         ),
        //                       ],
        //                     ),
        //                   ],
        //                 ),
        //                 const SizedBox(height: 12),
        //               ],
        //             ),
        //           );
        //         },
        //       );
        //     }
        //   },
        // );
      },
      error: (error, stackTrace) => const Center(
        child: Text("エラーが発生しました"),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
