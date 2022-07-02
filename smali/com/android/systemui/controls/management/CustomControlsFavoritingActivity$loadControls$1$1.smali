.class final Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;
.super Ljava/lang/Object;
.source "CustomControlsFavoritingActivity.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->loadControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lcom/android/systemui/controls/controller/ControlsController$LoadData;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomControlsFavoritingActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomControlsFavoritingActivity.kt\ncom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,515:1\n1819#2,2:516\n734#2:518\n825#2,2:519\n787#2:521\n815#2,2:522\n2448#2:524\n1445#2:526\n1470#2,3:527\n1473#2,3:537\n1517#2:540\n1588#2,3:541\n1#3:525\n355#4,7:530\n*E\n*S KotlinDebug\n*F\n+ 1 CustomControlsFavoritingActivity.kt\ncom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1\n*L\n178#1,2:516\n192#1:518\n192#1,2:519\n196#1:521\n196#1,2:522\n199#1:524\n201#1:526\n201#1,3:527\n201#1,3:537\n212#1:540\n212#1,3:541\n199#1:525\n201#1,7:530\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final accept$checkReorderRequest(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Z
    .locals 0

    .line 207
    invoke-static {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$getRequestOrder$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final accept(Lcom/android/systemui/controls/controller/ControlsController$LoadData;)V
    .locals 8
    .param p1    # Lcom/android/systemui/controls/controller/ControlsController$LoadData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-interface {p1}, Lcom/android/systemui/controls/controller/ControlsController$LoadData;->getAllControls()Ljava/util/List;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {v1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$getCurrentFavorites$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1819
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/controls/ControlStatus;

    .line 179
    invoke-virtual {v3}, Lcom/android/systemui/controls/ControlStatus;->getControlId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/controls/ControlStatus;->setFavorite(Z)V

    goto :goto_0

    .line 182
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {v1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$getCurrentFavorites$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lcom/android/systemui/controls/controller/ControlsController$LoadData;->getFavoritesIds()Ljava/util/List;

    move-result-object v1

    :cond_2
    move-object v5, v1

    .line 183
    invoke-interface {p1}, Lcom/android/systemui/controls/controller/ControlsController$LoadData;->getErrorOnLoad()Z

    move-result p1

    .line 185
    sget-boolean v1, Lcom/android/systemui/BasicRune;->CONTROLS_LOADING_DEVICES:Z

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 186
    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$showErrorDialog(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    return-void

    .line 191
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-virtual {p1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->getTAG()Ljava/lang/String;

    move-result-object p1

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadForComponent - isAutoRemove:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {v2}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$isAutoRemove$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", removed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/systemui/controls/ControlStatus;

    .line 192
    invoke-virtual {v6}, Lcom/android/systemui/controls/ControlStatus;->getRemoved()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_AUTO_REMOVE:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {p1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$isAutoRemove$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 787
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 815
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/controls/ControlStatus;

    .line 196
    invoke-virtual {v2}, Lcom/android/systemui/controls/ControlStatus;->getRemoved()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    move-object v4, p1

    goto :goto_4

    :cond_8
    move-object v4, v0

    .line 199
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 2448
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/ControlStatus;

    .line 199
    invoke-virtual {p1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->getTAG()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/controls/ui/util/ControlExtension;->Companion:Lcom/android/systemui/controls/ui/util/ControlExtension$Companion;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ControlStatus;->getControl()Landroid/service/controls/Control;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/systemui/controls/ui/util/ControlExtension$Companion;->dump(Landroid/service/controls/Control;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "dataCallback : "

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 201
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 1445
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1470
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1471
    move-object v3, v2

    check-cast v3, Lcom/android/systemui/controls/ControlStatus;

    .line 201
    invoke-virtual {v3}, Lcom/android/systemui/controls/ControlStatus;->getControl()Landroid/service/controls/Control;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_a

    const-string v3, ""

    .line 355
    :cond_a
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_b

    .line 1472
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    :cond_b
    check-cast v6, Ljava/util/List;

    .line 1473
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 201
    :cond_c
    invoke-static {p1, v0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$setControlsMap$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Ljava/util/Map;)V

    .line 202
    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    new-instance v0, Lcom/android/systemui/controls/management/model/AllStructureModel;

    .line 203
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v1, "resources"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {v1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$getFavoriteControlChangeMainCallback$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$favoriteControlChangeMainCallback$1;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v0

    .line 202
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/controls/management/model/AllStructureModel;-><init>(Landroid/content/res/Resources;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/controls/management/model/StructureModel$StructureModelCallback;Z)V

    invoke-static {p1, v0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$setCustomModel$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Lcom/android/systemui/controls/management/model/AllStructureModel;)V

    .line 206
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_STRUCTURE_ORDERING:Z

    if-eqz p1, :cond_10

    .line 209
    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {p1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->accept$checkReorderRequest(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 210
    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {p1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$getRequestOrder$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Ljava/util/List;

    move-result-object p1

    move-object v4, p1

    goto :goto_8

    .line 212
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {p1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$getController$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Lcom/android/systemui/controls/controller/ControlsController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {v0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$getComponent$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/controls/controller/ControlsController;->getFavoritesForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    .line 1517
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1589
    check-cast v1, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 212
    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_e
    move-object v4, v0

    .line 214
    :goto_8
    iget-object v2, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {v2}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$getCustomModel$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Lcom/android/systemui/controls/management/model/AllStructureModel;

    move-result-object v3

    if-eqz v3, :cond_f

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->refreshStructureOrdering$default(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;Lcom/android/systemui/controls/management/model/AllStructureModel;Ljava/util/List;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_9

    :cond_f
    const-string p0, "customModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 217
    :cond_10
    :goto_9
    iget-object p1, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-static {p1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;->access$getExecutor$p(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1$4;

    iget-object p0, p0, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->this$0:Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1$4;-><init>(Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 175
    check-cast p1, Lcom/android/systemui/controls/controller/ControlsController$LoadData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity$loadControls$1$1;->accept(Lcom/android/systemui/controls/controller/ControlsController$LoadData;)V

    return-void
.end method
