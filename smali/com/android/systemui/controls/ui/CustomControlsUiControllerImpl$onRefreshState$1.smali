.class final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;
.super Ljava/lang/Object;
.source "CustomControlsUiControllerImpl.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->onRefreshState(Landroid/content/ComponentName;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomControlsUiControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomControlsUiControllerImpl.kt\ncom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,890:1\n1819#2:891\n768#2,11:892\n256#2,2:903\n1820#2:905\n*E\n*S KotlinDebug\n*F\n+ 1 CustomControlsUiControllerImpl.kt\ncom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1\n*L\n676#1:891\n678#1,11:892\n679#1,2:903\n676#1:905\n*E\n"
.end annotation


# instance fields
.field final synthetic $componentName:Landroid/content/ComponentName;

.field final synthetic $controls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/service/controls/Control;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->$componentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->$controls:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final run$lambda-2$lambda-1$isStructureChanged(Lcom/android/systemui/controls/management/model/MainControlModel;Ljava/lang/String;)Z
    .locals 0

    .line 681
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/model/MainControlModel;->getStructure()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 669
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getLogWrapper$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/basic/util/LogWrapper;

    move-result-object v0

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshState: app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->$componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isAutoRemove="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->isAutoRemove()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomControlsUiControllerImpl"

    .line 669
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 676
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->$controls:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 1819
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/controls/Control;

    .line 677
    invoke-static {v3}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getLogWrapper$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/basic/util/LogWrapper;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/controls/ui/util/ControlExtension;->Companion:Lcom/android/systemui/controls/ui/util/ControlExtension$Companion;

    invoke-virtual {v8, v5}, Lcom/android/systemui/controls/ui/util/ControlExtension$Companion;->dump(Landroid/service/controls/Control;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "onRefreshState: "

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-static {v3}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getModels$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Ljava/util/List;

    move-result-object v7

    .line 768
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 777
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-eqz v10, :cond_0

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 256
    :cond_1
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lcom/android/systemui/controls/management/model/MainControlModel;

    .line 679
    invoke-virtual {v10}, Lcom/android/systemui/controls/management/model/MainControlModel;->getControlWithState()Lcom/android/systemui/controls/ui/ControlWithState;

    move-result-object v10

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v10}, Lcom/android/systemui/controls/ui/ControlWithState;->getCi()Lcom/android/systemui/controls/controller/ControlInfo;

    move-result-object v10

    if-nez v10, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v10}, Lcom/android/systemui/controls/controller/ControlInfo;->getControlId()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v5}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v8

    :cond_5
    check-cast v9, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-nez v9, :cond_6

    goto :goto_0

    .line 683
    :cond_6
    invoke-virtual {v5}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object v4

    const-string v7, ""

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    move-object v7, v4

    .line 685
    :goto_3
    sget-boolean v4, Lcom/android/systemui/BasicRune;->CONTROLS_AUTO_REMOVE:Z

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->isAutoRemove()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v5}, Landroid/service/controls/Control;->getStatus()I

    move-result v4

    const/4 v8, 0x2

    if-ne v4, v8, :cond_9

    .line 686
    invoke-virtual {v9}, Lcom/android/systemui/controls/management/model/MainControlModel;->getStructure()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 687
    invoke-static {v3, v9}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$onRefreshState$removeControl(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/management/model/MainControlModel;)V

    goto :goto_4

    .line 689
    :cond_9
    invoke-virtual {v5}, Landroid/service/controls/Control;->getStatus()I

    move-result v4

    if-ne v4, v6, :cond_a

    invoke-static {v9, v7}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->run$lambda-2$lambda-1$isStructureChanged(Lcom/android/systemui/controls/management/model/MainControlModel;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 690
    invoke-virtual {v9}, Lcom/android/systemui/controls/management/model/MainControlModel;->getStructure()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 691
    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 692
    invoke-static {v3, v9, v5}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$changeStructure(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/management/model/MainControlModel;Landroid/service/controls/Control;)V

    goto :goto_4

    .line 694
    :cond_a
    invoke-static {v3, v9, v5}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$updateControl(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/management/model/MainControlModel;Landroid/service/controls/Control;)V

    :goto_4
    move v4, v6

    goto/16 :goto_0

    .line 700
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$listAdjustmentIfNeeded(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Ljava/util/List;)V

    .line 701
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$onRefreshState$showEmptyStructureIfNeeded(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    if-eqz v4, :cond_c

    .line 704
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {v0, v6}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$setChanged$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Z)V

    .line 705
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$onRefreshState$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 706
    invoke-static {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getSelectedComponentInfo$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/controls/controller/ComponentInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getStructureInfosByUI(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 705
    invoke-static {p0, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$setVerificationStructureInfos$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Ljava/util/List;)V

    :cond_c
    return-void
.end method
