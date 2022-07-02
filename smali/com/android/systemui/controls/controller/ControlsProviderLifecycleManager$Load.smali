.class public final Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;
.super Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;
.source "ControlsProviderLifecycleManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Load"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsProviderLifecycleManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsProviderLifecycleManager.kt\ncom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,396:1\n1#2:397\n*E\n"
.end annotation


# instance fields
.field private providerInfoSubscriber:Landroid/service/controls/IControlsProviderInfoSubscriber;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final subscriber:Landroid/service/controls/IControlsSubscriber$Stub;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Landroid/service/controls/IControlsSubscriber$Stub;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/controls/IControlsSubscriber$Stub;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subscriber"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)V

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;->subscriber:Landroid/service/controls/IControlsSubscriber$Stub;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Landroid/service/controls/IControlsSubscriber$Stub;Landroid/service/controls/IControlsProviderInfoSubscriber;)V
    .locals 1
    .param p1    # Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/service/controls/IControlsSubscriber$Stub;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/controls/IControlsSubscriber$Stub;",
            "Landroid/service/controls/IControlsProviderInfoSubscriber;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subscriber"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "providerInfoSubscriber"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 335
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Landroid/service/controls/IControlsSubscriber$Stub;)V

    .line 336
    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;->providerInfoSubscriber:Landroid/service/controls/IControlsProviderInfoSubscriber;

    return-void
.end method


# virtual methods
.method public callWrapper$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Z
    .locals 4

    .line 341
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->access$getTAG$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-virtual {v1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "load "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_PROVIDER_INFO:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->access$getWrapper$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)Lcom/android/systemui/controls/controller/ServiceWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;->getSubscriber()Landroid/service/controls/IControlsSubscriber$Stub;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/controls/controller/ServiceWrapper;->load(Landroid/service/controls/IControlsSubscriber;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;->providerInfoSubscriber:Landroid/service/controls/IControlsProviderInfoSubscriber;

    if-nez p0, :cond_1

    move p0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/controller/ServiceWrapper;->loadProviderInfo(Landroid/service/controls/IControlsProviderInfoSubscriber;)Z

    move-result p0

    :goto_0
    if-eqz p0, :cond_4

    move v1, v3

    goto :goto_1

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->access$getWrapper$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)Lcom/android/systemui/controls/controller/ServiceWrapper;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;->subscriber:Landroid/service/controls/IControlsSubscriber$Stub;

    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/controller/ServiceWrapper;->load(Landroid/service/controls/IControlsSubscriber;)Z

    move-result v1

    :cond_4
    :goto_1
    return v1
.end method

.method public final getSubscriber()Landroid/service/controls/IControlsSubscriber$Stub;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 327
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;->subscriber:Landroid/service/controls/IControlsSubscriber$Stub;

    return-object p0
.end method
