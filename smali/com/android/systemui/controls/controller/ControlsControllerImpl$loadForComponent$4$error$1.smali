.class final Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4$error$1;
.super Ljava/lang/Object;
.source "ControlsControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4;->error(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsControllerImpl.kt\ncom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4$error$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1019:1\n1328#2:1020\n1414#2,2:1021\n1517#2:1023\n1588#2,3:1024\n1416#2,3:1027\n1517#2:1030\n1588#2,3:1031\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsControllerImpl.kt\ncom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4$error$1\n*L\n439#1:1020\n439#1,2:1021\n440#1:1023\n440#1,3:1024\n439#1,3:1027\n447#1:1030\n447#1,3:1031\n*E\n"
.end annotation


# instance fields
.field final synthetic $componentName:Landroid/content/ComponentName;

.field final synthetic $dataCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/controls/controller/ControlsController$LoadData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Ljava/util/function/Consumer;Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/controls/controller/ControlsController$LoadData;",
            ">;",
            "Lcom/android/systemui/controls/controller/ControlsControllerImpl;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4$error$1;->$componentName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4$error$1;->$dataCallback:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4$error$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 438
    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4$error$1;->$componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/controller/Favorites;->getStructuresForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 439
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4$error$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4$error$1;->$componentName:Landroid/content/ComponentName;

    .line 1328
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1414
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0xa

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1415
    check-cast v4, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 440
    invoke-virtual {v4}, Lcom/android/systemui/controls/controller/StructureInfo;->getControls()Ljava/util/List;

    move-result-object v6

    .line 1517
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1589
    check-cast v6, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 442
    invoke-virtual {v4}, Lcom/android/systemui/controls/controller/StructureInfo;->getStructure()Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    .line 441
    invoke-static {v1, v2, v6, v8, v9}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->access$createRemovedStatus(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Ljava/lang/CharSequence;Z)Lcom/android/systemui/controls/ControlStatus;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1416
    :cond_0
    invoke-static {v3, v7}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 1517
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1589
    check-cast v2, Lcom/android/systemui/controls/ControlStatus;

    .line 447
    invoke-virtual {v2}, Lcom/android/systemui/controls/ControlStatus;->getControl()Landroid/service/controls/Control;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    .line 448
    invoke-static {v3, v0, v1}, Lcom/android/systemui/controls/controller/ControlsControllerKt;->createLoadDataObject(Ljava/util/List;Ljava/util/List;Z)Lcom/android/systemui/controls/controller/ControlsController$LoadData;

    move-result-object v0

    .line 449
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$loadForComponent$4$error$1;->$dataCallback:Ljava/util/function/Consumer;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
