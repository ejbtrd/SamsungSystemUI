.class public final Lcom/android/systemui/controls/management/model/AllControlsModel;
.super Ljava/lang/Object;
.source "AllControlsModel.kt"

# interfaces
.implements Lcom/android/systemui/controls/management/model/CustomControlsModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/management/model/AllControlsModel$OrderedMap;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAllControlsModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AllControlsModel.kt\ncom/android/systemui/controls/management/model/AllControlsModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,204:1\n1588#2,3:205\n734#2:208\n825#2,2:209\n1571#2,9:211\n1819#2:220\n256#2,2:221\n1820#2:224\n1580#2:225\n256#2,2:226\n256#2,2:228\n1819#2:230\n256#2,2:231\n1820#2:233\n256#2,2:234\n318#2,7:236\n768#2,11:243\n1690#2,3:254\n1517#2:257\n1588#2,3:258\n734#2:261\n825#2,2:262\n1517#2:264\n1588#2,3:265\n1470#2,3:268\n1473#2,3:278\n768#2,11:281\n1#3:223\n355#4,7:271\n*E\n*S KotlinDebug\n*F\n+ 1 AllControlsModel.kt\ncom/android/systemui/controls/management/model/AllControlsModel\n*L\n35#1,3:205\n36#1:208\n36#1,2:209\n27#1,9:211\n27#1:220\n28#1,2:221\n27#1:224\n27#1:225\n42#1,2:226\n50#1,2:228\n56#1:230\n57#1,2:231\n56#1:233\n96#1,2:234\n103#1,7:236\n109#1,11:243\n110#1,3:254\n129#1:257\n129#1,3:258\n133#1:261\n133#1,2:262\n150#1:264\n150#1,3:265\n155#1,3:268\n155#1,3:278\n170#1,11:281\n27#1:223\n155#1,7:271\n*E\n"
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

.field private final categoryHeader:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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

.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/model/CustomElementWrapper;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final emptyStructureZoneString:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final favoriteControlChangedCallback:Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final favoriteIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final needCategoryHeader:Z

.field private final resources:Landroid/content/res/Resources;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/lang/CharSequence;ZLcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;)V
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlStatus;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Z",
            "Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryHeader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controls"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialFavoriteIds"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emptyStructureZoneString"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "favoriteControlChangedCallback"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->resources:Landroid/content/res/Resources;

    .line 13
    iput-object p2, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->categoryHeader:Ljava/lang/CharSequence;

    .line 14
    iput-object p3, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->controls:Ljava/util/List;

    .line 16
    iput-object p5, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->emptyStructureZoneString:Ljava/lang/CharSequence;

    .line 17
    iput-boolean p6, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->needCategoryHeader:Z

    .line 18
    iput-object p7, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->favoriteControlChangedCallback:Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/AllControlsModel;->getControls()Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 1588
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 1589
    check-cast p3, Lcom/android/systemui/controls/ControlStatus;

    .line 35
    invoke-virtual {p3}, Lcom/android/systemui/controls/ControlStatus;->getControl()Landroid/service/controls/Control;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 734
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object p5, p4

    check-cast p5, Ljava/lang/String;

    .line 36
    invoke-virtual {p2, p5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p1, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->favoriteIds:Ljava/util/List;

    .line 39
    iget-object p1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->controls:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/model/AllControlsModel;->createWrappers(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    return-void
.end method

.method private final createWrappers(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/ControlStatus;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/model/CustomElementWrapper;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-object v2, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->resources:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$dimen;->controls_custom_management_list_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1517
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1589
    check-cast v6, Lcom/android/systemui/controls/ControlStatus;

    .line 129
    invoke-virtual {v6}, Lcom/android/systemui/controls/ControlStatus;->getControlId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->favoriteIds:Ljava/util/List;

    invoke-static {v3, v5}, Lcom/android/systemui/controls/management/model/AllControlsModel;->createWrappers$isSame(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    .line 132
    iget-object v5, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->resources:Landroid/content/res/Resources;

    sget v6, Lcom/android/systemui/R$string;->controls_custom_removed:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 734
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/controls/ControlStatus;

    .line 133
    invoke-virtual {v8}, Lcom/android/systemui/controls/ControlStatus;->getRemoved()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    :cond_2
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 135
    iget-object v7, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->categoryHeader:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 136
    iget-object v7, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->emptyStructureZoneString:Ljava/lang/CharSequence;

    goto :goto_2

    .line 138
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->categoryHeader:Ljava/lang/CharSequence;

    .line 142
    :goto_2
    new-instance v8, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    .line 143
    iget-object v9, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->categoryHeader:Ljava/lang/CharSequence;

    .line 146
    iget-boolean v10, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->needCategoryHeader:Z

    .line 142
    invoke-direct {v8, v9, v3, v7, v10}, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;-><init>(Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Z)V

    .line 141
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_5

    .line 1517
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1589
    check-cast v1, Lcom/android/systemui/controls/ControlStatus;

    .line 150
    new-instance v3, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    invoke-direct {v3, v1}, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;-><init>(Lcom/android/systemui/controls/ControlStatus;)V

    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    new-instance p0, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;

    invoke-direct {p0, v2}, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 155
    :cond_5
    new-instance v3, Lcom/android/systemui/controls/management/model/AllControlsModel$OrderedMap;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-direct {v3, v4}, Lcom/android/systemui/controls/management/model/AllControlsModel$OrderedMap;-><init>(Ljava/util/Map;)V

    .line 1470
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1471
    move-object v5, v4

    check-cast v5, Lcom/android/systemui/controls/ControlStatus;

    .line 155
    invoke-virtual {v5}, Lcom/android/systemui/controls/ControlStatus;->getControl()Landroid/service/controls/Control;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/controls/Control;->getZone()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_6

    const-string v5, ""

    .line 355
    :cond_6
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7

    .line 1472
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    :cond_7
    check-cast v6, Ljava/util/List;

    .line 1473
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 157
    :cond_8
    invoke-virtual {v3}, Lcom/android/systemui/controls/management/model/AllControlsModel$OrderedMap;->getOrderedKeys()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 159
    invoke-static {v3, v4}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/controls/management/model/AllControlsModel$createWrappers$values$1;->INSTANCE:Lcom/android/systemui/controls/management/model/AllControlsModel$createWrappers$values$1;

    invoke-static {v5, v6}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v5

    .line 160
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 161
    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    goto :goto_5

    .line 163
    :cond_9
    new-instance v6, Lcom/android/systemui/controls/management/model/CustomZoneNameWrapper;

    const-string/jumbo v7, "zoneName"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v4}, Lcom/android/systemui/controls/management/model/CustomZoneNameWrapper;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    goto :goto_5

    .line 169
    :cond_a
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_e

    .line 768
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/android/systemui/controls/management/model/CustomZoneNameWrapper;

    if-eqz v5, :cond_b

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 170
    :cond_c
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_d

    .line 171
    new-instance p1, Lcom/android/systemui/controls/management/model/CustomZoneNameWrapper;

    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->emptyStructureZoneString:Ljava/lang/CharSequence;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/management/model/CustomZoneNameWrapper;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_d
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 175
    :cond_e
    new-instance p0, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;

    invoke-direct {p0, v2}, Lcom/android/systemui/controls/management/model/VerticalPaddingWrapper;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static final createWrappers$isSame(Ljava/util/List;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 120
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    .line 121
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->sorted(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 122
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final setControlFavoriteStatus(Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;Z)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->getControlStatus()Lcom/android/systemui/controls/ControlStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlStatus;->getFavorite()Z

    move-result v0

    if-ne p2, v0, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 75
    iget-object v0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->favoriteIds:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->getControlId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->favoriteIds:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->getControlId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->getControlStatus()Lcom/android/systemui/controls/ControlStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlStatus;->getControl()Landroid/service/controls/Control;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    .line 80
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->favoriteControlChangedCallback:Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;

    .line 81
    new-instance v2, Lcom/android/systemui/controls/management/model/ControlInfoForStructure;

    .line 83
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->getControlId()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-direct {v2, v0, v3, p2}, Lcom/android/systemui/controls/management/model/ControlInfoForStructure;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 80
    invoke-interface {v1, v2}, Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;->onControlInfoChange(Lcom/android/systemui/controls/management/model/ControlInfoForStructure;)V

    .line 89
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->getControlStatus()Lcom/android/systemui/controls/ControlStatus;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/controls/ControlStatus;->setFavorite(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/AllControlsModel;->getElements()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 91
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private final updateStructureFavoriteStatusByControls(Ljava/lang/CharSequence;)V
    .locals 8

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/AllControlsModel;->getElements()Ljava/util/List;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/controls/management/model/CustomElementWrapper;

    .line 97
    instance-of v5, v4, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    invoke-virtual {v4}, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->getStructureName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    if-eqz v4, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 257
    :goto_1
    check-cast v1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    if-nez v1, :cond_3

    goto/16 :goto_6

    .line 100
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/AllControlsModel;->getElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/AllControlsModel;->getElements()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v4, p1, 0x1

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    .line 319
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v2

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 320
    check-cast v6, Lcom/android/systemui/controls/management/model/CustomElementWrapper;

    .line 103
    instance-of v6, v6, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move v5, v7

    :goto_3
    if-ne v5, v7, :cond_6

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/AllControlsModel;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 108
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/AllControlsModel;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    .line 768
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    if-eqz v6, :cond_7

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1690
    :cond_8
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move v2, v3

    goto :goto_5

    .line 1691
    :cond_a
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    .line 110
    invoke-virtual {v4}, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->getFavorite()Z

    move-result v4

    if-nez v4, :cond_b

    .line 113
    :goto_5
    invoke-virtual {v1, v2}, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->setFavorite(Z)V

    .line 114
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez p0, :cond_c

    goto :goto_6

    :cond_c
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :goto_6
    return-void
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

    .line 23
    iput-object p1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method

.method public changeFavoriteStatus(Ljava/lang/String;Z)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controlId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/AllControlsModel;->getElements()Ljava/util/List;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/controls/management/model/CustomElementWrapper;

    .line 43
    instance-of v3, v2, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    invoke-virtual {v2}, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->getControlStatus()Lcom/android/systemui/controls/ControlStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/controls/ControlStatus;->getControl()Landroid/service/controls/Control;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 257
    :goto_1
    check-cast v1, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    .line 45
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/controls/management/model/AllControlsModel;->setControlFavoriteStatus(Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;Z)V

    .line 46
    iget-object p1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->categoryHeader:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/management/model/AllControlsModel;->updateStructureFavoriteStatusByControls(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public changeStructureFavoriteStatus(Ljava/lang/CharSequence;Z)V
    .locals 9
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "structureName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/AllControlsModel;->getElements()Ljava/util/List;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/controls/management/model/CustomElementWrapper;

    .line 51
    instance-of v6, v5, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    if-eqz v6, :cond_1

    check-cast v5, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    invoke-virtual {v5}, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->getStructureName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    if-eqz v5, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v4

    .line 257
    :goto_1
    check-cast v1, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;

    if-nez v1, :cond_3

    return-void

    .line 54
    :cond_3
    invoke-virtual {v1}, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->getFavorite()Z

    move-result p1

    if-ne p2, p1, :cond_4

    return-void

    .line 56
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->controls:Ljava/util/List;

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ControlStatus;

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/AllControlsModel;->getElements()Ljava/util/List;

    move-result-object v5

    .line 256
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/controls/management/model/CustomElementWrapper;

    .line 58
    instance-of v8, v7, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    if-eqz v8, :cond_6

    check-cast v7, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    invoke-virtual {v7}, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;->getControlStatus()Lcom/android/systemui/controls/ControlStatus;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/controls/ControlStatus;->getControl()Landroid/service/controls/Control;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/systemui/controls/ControlStatus;->getControlId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v2

    goto :goto_3

    :cond_6
    move v7, v3

    :goto_3
    if-eqz v7, :cond_5

    goto :goto_4

    :cond_7
    move-object v6, v4

    .line 257
    :goto_4
    check-cast v6, Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;

    .line 60
    invoke-direct {p0, v6, p2}, Lcom/android/systemui/controls/management/model/AllControlsModel;->setControlFavoriteStatus(Lcom/android/systemui/controls/management/model/CustomControlStatusWrapper;Z)V

    goto :goto_2

    .line 63
    :cond_8
    invoke-virtual {v1, p2}, Lcom/android/systemui/controls/management/model/CustomStructureNameWrapper;->setFavorite(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/AllControlsModel;->getElements()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 65
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez p0, :cond_9

    goto :goto_5

    :cond_9
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :goto_5
    return-void
.end method

.method public final getCategoryHeader()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 13
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->categoryHeader:Ljava/lang/CharSequence;

    return-object p0
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

    .line 14
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->controls:Ljava/util/List;

    return-object p0
.end method

.method public getElements()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/controls/management/model/CustomElementWrapper;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 39
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->elements:Ljava/util/List;

    return-object p0
.end method

.method public final getNeedCategoryHeader()Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/android/systemui/controls/management/model/AllControlsModel;->needCategoryHeader:Z

    return p0
.end method
