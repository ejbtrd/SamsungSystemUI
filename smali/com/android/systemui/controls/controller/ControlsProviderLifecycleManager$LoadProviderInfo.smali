.class public final Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$LoadProviderInfo;
.super Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;
.source "ControlsProviderLifecycleManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LoadProviderInfo"
.end annotation


# instance fields
.field private final providerInfoSubscriber:Landroid/service/controls/IControlsProviderInfoSubscriber;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Landroid/service/controls/IControlsProviderInfoSubscriber;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/controls/IControlsProviderInfoSubscriber;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "providerInfoSubscriber"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$LoadProviderInfo;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 387
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)V

    .line 386
    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$LoadProviderInfo;->providerInfoSubscriber:Landroid/service/controls/IControlsProviderInfoSubscriber;

    return-void
.end method


# virtual methods
.method public callWrapper$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$LoadProviderInfo;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->access$getTAG$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$LoadProviderInfo;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "LoadProviderInfo "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$LoadProviderInfo;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->access$getWrapper$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)Lcom/android/systemui/controls/controller/ServiceWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$LoadProviderInfo;->providerInfoSubscriber:Landroid/service/controls/IControlsProviderInfoSubscriber;

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/controller/ServiceWrapper;->loadProviderInfo(Landroid/service/controls/IControlsProviderInfoSubscriber;)Z

    move-result p0

    :goto_0
    return p0
.end method
