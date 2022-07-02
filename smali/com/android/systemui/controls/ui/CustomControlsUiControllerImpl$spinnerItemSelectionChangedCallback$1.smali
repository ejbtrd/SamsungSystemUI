.class public final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;
.super Ljava/lang/Object;
.source "CustomControlsUiControllerImpl.kt"

# interfaces
.implements Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;-><init>(Ldagger/Lazy;Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ldagger/Lazy;Landroid/content/SharedPreferences;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback<",
        "Lcom/android/systemui/controls/ui/ControlsSelectionItem;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomControlsUiControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomControlsUiControllerImpl.kt\ncom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,890:1\n1819#2,2:891\n256#2,2:893\n*E\n*S KotlinDebug\n*F\n+ 1 CustomControlsUiControllerImpl.kt\ncom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1\n*L\n176#1,2:891\n184#1,2:893\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onItemSelectionChanged$updatePreferences(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/controller/ComponentInfo;)V
    .locals 1

    .line 166
    sget-object v0, Lcom/android/systemui/controls/ui/ControlsValues;->Companion:Lcom/android/systemui/controls/ui/ControlsValues$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlsValues$Companion;->getEMPTY_COMPONENT_INFO()Lcom/android/systemui/controls/controller/ComponentInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getSharedPreferences$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 171
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "controls_custom_component"

    .line 169
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 173
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public onItemSelectionChanged(Lcom/android/systemui/controls/ui/ControlsSelectionItem;Lcom/android/systemui/controls/ui/ControlsSelectionItem;)V
    .locals 4
    .param p1    # Lcom/android/systemui/controls/ui/ControlsSelectionItem;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/controls/ui/ControlsSelectionItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo p1, "to"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getAllComponentInfo()Ljava/util/List;

    move-result-object p1

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "CustomControlsUiControllerImpl"

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemSelected allCompInfo - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ComponentInfo;->getStructureInfos()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getAllComponentInfo()Ljava/util/List;

    move-result-object p1

    .line 256
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 184
    invoke-virtual {v2}, Lcom/android/systemui/controls/controller/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    check-cast v0, Lcom/android/systemui/controls/controller/ComponentInfo;

    if-nez v0, :cond_3

    return-void

    .line 185
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getSelectedComponentInfo$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/controls/controller/ComponentInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 186
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getSelectedComponentInfo$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/controls/controller/ComponentInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->saveFavorites(Landroid/content/ComponentName;)Z

    .line 187
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {p1, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;->onItemSelectionChanged$updatePreferences(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/controller/ComponentInfo;)V

    .line 189
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$setChanged$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Z)V

    .line 190
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_AUTO_REMOVE:Z

    if-eqz p1, :cond_4

    .line 191
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-virtual {p1, p2}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->setAutoRemove(Z)V

    .line 192
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->isAutoRemove()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "onItemSelected isAutoRemove - "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_4
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    if-eqz p1, :cond_5

    .line 195
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getSaLogger$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/controls/ui/util/SALogger;

    move-result-object p1

    .line 196
    new-instance p2, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapSpinnerApp;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getSelectedComponentInfo$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/controls/controller/ComponentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "selectedComponentInfo.componentName.packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v1}, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapSpinnerApp;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1, p2}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 199
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$setAdapterNeedToUpdateDataSet(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    .line 200
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-static {p0, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$reload(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/controller/ComponentInfo;)V

    :cond_6
    return-void
.end method

.method public bridge synthetic onItemSelectionChanged(Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;)V
    .locals 0

    .line 160
    check-cast p1, Lcom/android/systemui/controls/ui/ControlsSelectionItem;

    check-cast p2, Lcom/android/systemui/controls/ui/ControlsSelectionItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;->onItemSelectionChanged(Lcom/android/systemui/controls/ui/ControlsSelectionItem;Lcom/android/systemui/controls/ui/ControlsSelectionItem;)V

    return-void
.end method
