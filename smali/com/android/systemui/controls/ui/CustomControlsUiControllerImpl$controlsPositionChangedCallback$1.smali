.class public final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPositionChangedCallback$1;
.super Ljava/lang/Object;
.source "CustomControlsUiControllerImpl.kt"

# interfaces
.implements Lcom/android/systemui/controls/ui/CustomControlsUiController$ControlsPositionChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;-><init>(Ldagger/Lazy;Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ldagger/Lazy;Landroid/content/SharedPreferences;Lcom/android/systemui/controls/ui/ControlActionCoordinator;Lcom/android/systemui/controls/ui/CustomControlActionCoordinator;Lcom/android/systemui/controls/ControlsMetricsLogger;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPositionChangedCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositionChanged(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "structure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPositionChangedCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$setChanged$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Z)V

    .line 132
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$controlsPositionChangedCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 133
    invoke-static {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getSelectedComponentInfo$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/controls/controller/ComponentInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getStructureInfosByUI(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    .line 132
    invoke-static {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$setVerificationStructureInfos$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Ljava/util/List;)V

    return-void
.end method
