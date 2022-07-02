.class public final Lcom/android/systemui/controls/management/model/AllStructureModel;
.super Ljava/lang/Object;
.source "AllStructureModel.kt"

# interfaces
.implements Lcom/android/systemui/controls/management/model/StructureModel;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAllStructureModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AllStructureModel.kt\ncom/android/systemui/controls/management/model/AllStructureModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,193:1\n1445#2:194\n1470#2,3:195\n1473#2,3:205\n1588#2,3:208\n734#2:218\n825#2,2:219\n1571#2,9:221\n1819#2:230\n256#2,2:231\n1820#2:234\n1580#2:235\n734#2:236\n825#2,2:237\n1445#2:239\n1470#2,3:240\n1473#2,3:250\n1517#2:253\n1588#2,3:254\n1517#2:257\n1588#2,3:258\n768#2,11:261\n787#2:272\n815#2,2:273\n1819#2,2:275\n787#2:277\n815#2,2:278\n1819#2:280\n1711#2,3:281\n1820#2:284\n1819#2,2:285\n768#2,11:287\n1517#2:298\n1588#2,3:299\n355#3,7:198\n355#3,7:211\n355#3,7:243\n1#4:233\n*E\n*S KotlinDebug\n*F\n+ 1 AllStructureModel.kt\ncom/android/systemui/controls/management/model/AllStructureModel\n*L\n42#1:194\n42#1,3:195\n42#1,3:205\n44#1,3:208\n45#1:218\n45#1,2:219\n33#1,9:221\n33#1:230\n34#1,2:231\n33#1:234\n33#1:235\n89#1:236\n89#1,2:237\n90#1:239\n90#1,3:240\n90#1,3:250\n100#1:253\n100#1,3:254\n113#1:257\n113#1,3:258\n152#1,11:261\n153#1:272\n153#1,2:273\n156#1,2:275\n165#1:277\n165#1,2:278\n165#1:280\n167#1,3:281\n165#1:284\n178#1,2:285\n188#1,11:287\n188#1:298\n188#1,3:299\n42#1,7:198\n45#1,7:211\n90#1,7:243\n33#1:233\n*E\n"
.end annotation


# instance fields
.field private adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final controls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/model/StructureElementWrapper;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final favoriteControlChangeCallback:Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final favoriteControlChangeMainCallback:Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final favoriteIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isLoading:Z

.field private final removedString:Ljava/lang/String;

.field private final resources:Landroid/content/res/Resources;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;Z)V
    .locals 4
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlStatus;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;",
            "Z)V"
        }
    .end annotation

    const-string/jumbo v0, "resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controls"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialFavoriteIds"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favoriteControlChangeMainCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->resources:Landroid/content/res/Resources;

    .line 17
    iput-object p2, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->controls:Ljava/util/List;

    .line 19
    iput-object p4, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteControlChangeMainCallback:Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;

    .line 20
    iput-boolean p5, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->isLoading:Z

    .line 24
    sget p2, Lcom/android/systemui/R$string;->controls_custom_removed:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->removedString:Ljava/lang/String;

    .line 41
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/AllStructureModel;->getControls()Ljava/util/List;

    move-result-object p2

    .line 1445
    new-instance p4, Ljava/util/LinkedHashMap;

    invoke-direct {p4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1470
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    .line 1471
    move-object v0, p5

    check-cast v0, Lcom/android/systemui/controls/ControlStatus;

    .line 42
    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlStatus;->getStructure()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 355
    :cond_0
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1472
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-interface {p4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 1473
    invoke-interface {v1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 43
    :cond_2
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1588
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1589
    check-cast v1, Lcom/android/systemui/controls/ControlStatus;

    .line 44
    invoke-virtual {v1}, Lcom/android/systemui/controls/ControlStatus;->getControl()Landroid/service/controls/Control;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 355
    :cond_3
    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_4

    .line 45
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-interface {p1, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    :cond_4
    check-cast p4, Ljava/util/List;

    .line 734
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 45
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-interface {p4, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 40
    :cond_7
    iput-object p1, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteIds:Ljava/util/Map;

    .line 51
    new-instance p1, Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;-><init>(Lcom/android/systemui/controls/management/model/AllStructureModel;)V

    iput-object p1, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteControlChangeCallback:Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;

    .line 72
    iget-object p1, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->controls:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/model/AllStructureModel;->createWrappers(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->elements:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getFavoriteControlChangeMainCallback$p(Lcom/android/systemui/controls/management/model/AllStructureModel;)Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteControlChangeMainCallback:Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;

    return-object p0
.end method

.method public static final synthetic access$getFavoriteIds$p(Lcom/android/systemui/controls/management/model/AllStructureModel;)Ljava/util/Map;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteIds:Ljava/util/Map;

    return-object p0
.end method

.method private final createWrappers(Ljava/util/List;)Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlStatus;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/model/StructureElementWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iget-object v2, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->resources:Landroid/content/res/Resources;

    .line 79
    sget v3, Lcom/android/systemui/R$dimen;->controls_custom_management_list_first_top_padding:I

    .line 77
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 81
    iget-object v3, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->resources:Landroid/content/res/Resources;

    .line 83
    sget v4, Lcom/android/systemui/R$dimen;->controls_custom_management_list_padding:I

    .line 81
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 87
    iget-object v4, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->resources:Landroid/content/res/Resources;

    sget v5, Lcom/android/systemui/R$string;->controls_favorite_other_structure_zone_header:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 88
    iget-object v5, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->resources:Landroid/content/res/Resources;

    sget v6, Lcom/android/systemui/R$string;->controls_add_controls_subtitle:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 734
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/controls/ControlStatus;

    .line 89
    invoke-virtual {v8}, Lcom/android/systemui/controls/ControlStatus;->getRemoved()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v9, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v7, p1

    .line 90
    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->minus(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    .line 1445
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1470
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1471
    move-object v8, v7

    check-cast v8, Lcom/android/systemui/controls/ControlStatus;

    .line 90
    invoke-virtual {v8}, Lcom/android/systemui/controls/ControlStatus;->getControl()Landroid/service/controls/Control;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object v8

    if-nez v8, :cond_2

    const-string v8, ""

    .line 355
    :cond_2
    invoke-interface {v14, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_3

    .line 1472
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-interface {v14, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    :cond_3
    check-cast v10, Ljava/util/List;

    .line 1473
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    :cond_4
    sget-boolean v6, Lcom/android/systemui/BasicRune;->CONTROLS_LOADING_DEVICES:Z

    const-string/jumbo v7, "subtitle"

    if-eqz v6, :cond_5

    iget-boolean v6, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->isLoading:Z

    if-eqz v6, :cond_5

    .line 93
    new-instance v0, Lcom/android/systemui/controls/management/model/LoadingWrapper;

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Lcom/android/systemui/controls/management/model/LoadingWrapper;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 96
    :cond_5
    new-instance v6, Lcom/android/systemui/controls/management/model/SubtitleWrapper;

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v5}, Lcom/android/systemui/controls/management/model/SubtitleWrapper;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    const/4 v15, 0x1

    xor-int/2addr v5, v15

    const/16 v13, 0xa

    const-string v12, "emptyStructureZoneString"

    if-eqz v5, :cond_7

    .line 1517
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v9, v13}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1589
    check-cast v6, Lcom/android/systemui/controls/ControlStatus;

    .line 100
    invoke-virtual {v6}, Lcom/android/systemui/controls/ControlStatus;->getControlId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 101
    :cond_6
    new-instance v18, Lcom/android/systemui/controls/management/model/AllControlsModel;

    .line 102
    iget-object v7, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->resources:Landroid/content/res/Resources;

    iget-object v8, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->removedString:Ljava/lang/String;

    const-string/jumbo v5, "removedString"

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x1

    iget-object v11, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteControlChangeCallback:Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;

    move-object/from16 v6, v18

    move-object/from16 v17, v11

    move-object v11, v4

    move-object/from16 v23, v12

    move/from16 v12, v16

    move v15, v13

    move-object/from16 v13, v17

    .line 101
    invoke-direct/range {v6 .. v13}, Lcom/android/systemui/controls/management/model/AllControlsModel;-><init>(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;ZLcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;)V

    .line 106
    new-instance v6, Lcom/android/systemui/controls/management/model/PaddingWrapper;

    invoke-direct {v6, v2}, Lcom/android/systemui/controls/management/model/PaddingWrapper;-><init>(I)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v2, Lcom/android/systemui/controls/management/model/ControlWrapper;

    iget-object v6, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->removedString:Ljava/lang/String;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xc

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v6

    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/controls/management/model/ControlWrapper;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/management/model/AllControlsModel;Ljava/lang/CharSequence;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_3

    :cond_7
    move-object/from16 v23, v12

    move v15, v13

    .line 111
    :goto_3
    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/16 v16, 0x0

    move-object/from16 v13, v16

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Ljava/lang/CharSequence;

    .line 112
    invoke-static {v14, v12}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/util/List;

    .line 113
    iget-object v6, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteIds:Ljava/util/Map;

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_8

    move-object/from16 v7, v16

    goto :goto_6

    .line 1517
    :cond_8
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v15}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 1589
    check-cast v8, Ljava/lang/String;

    .line 113
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    :goto_6
    if-nez v7, :cond_a

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v6

    goto :goto_7

    :cond_a
    move-object v10, v7

    .line 115
    :goto_7
    invoke-interface {v14}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_c

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_8

    :cond_b
    const/4 v6, 0x0

    move/from16 v17, v6

    goto :goto_9

    :cond_c
    :goto_8
    move/from16 v17, v11

    .line 116
    :goto_9
    new-instance v26, Lcom/android/systemui/controls/management/model/AllControlsModel;

    .line 117
    iget-object v7, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->resources:Landroid/content/res/Resources;

    .line 118
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v6, v23

    .line 121
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v15, v0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteControlChangeCallback:Lcom/android/systemui/controls/management/model/AllStructureModel$favoriteControlChangeCallback$1;

    move-object v0, v6

    move-object/from16 v6, v26

    move/from16 v19, v11

    move-object v11, v4

    move-object/from16 v20, v12

    move/from16 v12, v17

    move/from16 v17, v3

    move-object v3, v13

    move-object v13, v15

    .line 116
    invoke-direct/range {v6 .. v13}, Lcom/android/systemui/controls/management/model/AllControlsModel;-><init>(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;ZLcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;)V

    .line 125
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    move-object/from16 v23, v0

    move/from16 v3, v17

    move-object/from16 v13, v26

    goto :goto_a

    .line 128
    :cond_d
    new-instance v6, Lcom/android/systemui/controls/management/model/PaddingWrapper;

    invoke-direct {v6, v2}, Lcom/android/systemui/controls/management/model/PaddingWrapper;-><init>(I)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v2, Lcom/android/systemui/controls/management/model/ControlWrapper;

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0xc

    const/16 v30, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, v20

    invoke-direct/range {v24 .. v30}, Lcom/android/systemui/controls/management/model/ControlWrapper;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/management/model/AllControlsModel;Ljava/lang/CharSequence;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v23, v0

    move-object v13, v3

    move/from16 v2, v17

    move v3, v2

    :goto_a
    const/16 v15, 0xa

    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_e
    move-object v3, v13

    move-object/from16 v0, v23

    if-nez v3, :cond_f

    goto :goto_b

    .line 136
    :cond_f
    new-instance v5, Lcom/android/systemui/controls/management/model/PaddingWrapper;

    invoke-direct {v5, v2}, Lcom/android/systemui/controls/management/model/PaddingWrapper;-><init>(I)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v2, Lcom/android/systemui/controls/management/model/ControlWrapper;

    .line 139
    invoke-virtual {v3}, Lcom/android/systemui/controls/management/model/AllControlsModel;->getCategoryHeader()Ljava/lang/CharSequence;

    move-result-object v5

    .line 141
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v3}, Lcom/android/systemui/controls/management/model/AllControlsModel;->getNeedCategoryHeader()Z

    move-result v0

    .line 138
    invoke-direct {v2, v5, v3, v4, v0}, Lcom/android/systemui/controls/management/model/ControlWrapper;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/management/model/AllControlsModel;Ljava/lang/CharSequence;Z)V

    .line 137
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    return-object v1
.end method


# virtual methods
.method public attachAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method public final changeStructureOrder(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/AllStructureModel;->getElements()Ljava/util/List;

    move-result-object v0

    .line 768
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/controls/management/model/ControlWrapper;

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 787
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 815
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/controls/management/model/ControlWrapper;

    .line 153
    invoke-virtual {v3}, Lcom/android/systemui/controls/management/model/ControlWrapper;->getStructureName()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->removedString:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 154
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/controls/management/model/ControlWrapper;

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/AllStructureModel;->getElements()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-virtual {v4}, Lcom/android/systemui/controls/management/model/ControlWrapper;->getStructureName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 161
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/AllStructureModel;->getElements()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 164
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 787
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 815
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/controls/management/model/ControlWrapper;

    .line 165
    invoke-virtual {v5}, Lcom/android/systemui/controls/management/model/ControlWrapper;->getStructureName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1819
    :cond_6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "StructureModel"

    const/4 v5, 0x0

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controls/management/model/ControlWrapper;

    .line 166
    sget-boolean v6, Lcom/android/systemui/BasicRune;->CONTROLS_SMALL_TYPE_NEW_STRUCTURE_ORDER_FIRST:Z

    if-eqz v6, :cond_c

    .line 167
    invoke-virtual {v3}, Lcom/android/systemui/controls/management/model/ControlWrapper;->getControlsModel()Lcom/android/systemui/controls/management/model/AllControlsModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/controls/management/model/AllControlsModel;->getControls()Ljava/util/List;

    move-result-object v6

    .line 1711
    instance-of v7, v6, Ljava/util/Collection;

    const/4 v8, 0x1

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    move v8, v5

    goto :goto_6

    .line 1712
    :cond_8
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/controls/ControlStatus;

    .line 167
    invoke-virtual {v7}, Lcom/android/systemui/controls/ControlStatus;->getLayoutType()I

    move-result v7

    if-ne v7, v8, :cond_a

    move v7, v8

    goto :goto_5

    :cond_a
    move v7, v5

    :goto_5
    if-eqz v7, :cond_9

    :goto_6
    if-eqz v8, :cond_b

    .line 168
    invoke-virtual {v3}, Lcom/android/systemui/controls/management/model/ControlWrapper;->getStructureName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string v3, "changeStructureOrder SmallType Reorder"

    .line 169
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 171
    :cond_b
    invoke-virtual {v3}, Lcom/android/systemui/controls/management/model/ControlWrapper;->getStructureName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 174
    :cond_c
    invoke-virtual {v3}, Lcom/android/systemui/controls/management/model/ControlWrapper;->getStructureName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1819
    :cond_d
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 179
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controls/management/model/ControlWrapper;

    if-nez v3, :cond_f

    goto :goto_7

    .line 180
    :cond_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_e

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/AllStructureModel;->getElements()Ljava/util/List;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v6, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v5, v7

    goto :goto_7

    .line 187
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeStructureOrder after="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/AllStructureModel;->getElements()Ljava/util/List;

    move-result-object p0

    .line 768
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/controls/management/model/ControlWrapper;

    if-eqz v3, :cond_11

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1517
    :cond_12
    new-instance p0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1589
    check-cast v2, Lcom/android/systemui/controls/management/model/ControlWrapper;

    .line 188
    invoke-virtual {v2}, Lcom/android/systemui/controls/management/model/ControlWrapper;->getStructureName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 187
    :cond_13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 185
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public final getControls()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlStatus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 17
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->controls:Ljava/util/List;

    return-object p0
.end method

.method public getElements()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/model/StructureElementWrapper;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->elements:Ljava/util/List;

    return-object p0
.end method

.method public getFavorites()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/controller/ControlInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/android/systemui/controls/management/model/AllStructureModel;->favoriteIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 1571
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1579
    check-cast v2, Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/AllStructureModel;->getControls()Ljava/util/List;

    move-result-object v3

    .line 256
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/systemui/controls/ControlStatus;

    .line 34
    invoke-virtual {v6}, Lcom/android/systemui/controls/ControlStatus;->getControl()Landroid/service/controls/Control;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_2
    move-object v4, v5

    :goto_1
    check-cast v4, Lcom/android/systemui/controls/ControlStatus;

    if-nez v4, :cond_3

    move-object v2, v5

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/android/systemui/controls/ControlStatus;->getControl()Landroid/service/controls/Control;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_4

    goto :goto_3

    .line 36
    :cond_4
    sget-object v3, Lcom/android/systemui/controls/controller/ControlInfo;->Companion:Lcom/android/systemui/controls/controller/ControlInfo$Companion;

    invoke-virtual {v3, v2}, Lcom/android/systemui/controls/controller/ControlInfo$Companion;->fromControl(Landroid/service/controls/Control;)Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_0

    .line 1579
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v1
.end method
