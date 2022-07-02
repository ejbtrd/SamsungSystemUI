.class final Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateComponentModel$checkLaunchingApp$1;
.super Ljava/lang/Object;
.source "CustomControlsUiControllerImpl.kt"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->updateComponentModel$checkLaunchingApp(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/ui/ControlsSelectionItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/service/controls/ControlsProviderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateComponentModel$checkLaunchingApp$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/service/controls/ControlsProviderInfo;)V
    .locals 4
    .param p1    # Landroid/service/controls/ControlsProviderInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "pi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1}, Landroid/service/controls/ControlsProviderInfo;->getAppIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "providerInfo - "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CustomControlsUiControllerImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_AUTO_REMOVE:Z

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {p1}, Landroid/service/controls/ControlsProviderInfo;->getAutoRemove()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "providerInfo - autoRemove: "

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateComponentModel$checkLaunchingApp$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    invoke-virtual {p1}, Landroid/service/controls/ControlsProviderInfo;->getAutoRemove()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->setAutoRemove(Z)V

    .line 355
    :cond_0
    invoke-virtual {p1}, Landroid/service/controls/ControlsProviderInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateComponentModel$checkLaunchingApp$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 356
    invoke-virtual {p1}, Landroid/service/controls/ControlsProviderInfo;->getAppIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$setLaunchingPendingIntent$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Landroid/app/PendingIntent;)V

    .line 357
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-static {p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getUiExecutor$p(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateComponentModel$checkLaunchingApp$1$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateComponentModel$checkLaunchingApp$1$1$1;-><init>(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 349
    check-cast p1, Landroid/service/controls/ControlsProviderInfo;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$updateComponentModel$checkLaunchingApp$1;->accept(Landroid/service/controls/ControlsProviderInfo;)V

    return-void
.end method
