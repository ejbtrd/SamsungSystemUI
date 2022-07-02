.class public final Lcom/android/systemui/controls/controller/ServiceWrapper;
.super Ljava/lang/Object;
.source "ServiceWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/controller/ServiceWrapper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServiceWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceWrapper.kt\ncom/android/systemui/controls/controller/ServiceWrapper\n*L\n1#1,93:1\n37#1,6:94\n37#1,6:100\n37#1,6:106\n37#1,6:112\n37#1,6:118\n37#1,6:124\n37#1,6:130\n*E\n*S KotlinDebug\n*F\n+ 1 ServiceWrapper.kt\ncom/android/systemui/controls/controller/ServiceWrapper\n*L\n47#1,6:94\n53#1,6:100\n59#1,6:106\n65#1,6:112\n71#1,6:118\n81#1,6:124\n88#1,6:130\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/controls/controller/ServiceWrapper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final service:Landroid/service/controls/IControlsProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/controller/ServiceWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/controller/ServiceWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/controller/ServiceWrapper;->Companion:Lcom/android/systemui/controls/controller/ServiceWrapper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/service/controls/IControlsProvider;)V
    .locals 1
    .param p1    # Landroid/service/controls/IControlsProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ServiceWrapper;->service:Landroid/service/controls/IControlsProvider;

    return-void
.end method


# virtual methods
.method public final action(Ljava/lang/String;Landroid/service/controls/actions/ControlAction;Landroid/service/controls/IControlsActionCallback;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/service/controls/actions/ControlAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/service/controls/IControlsActionCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "controlId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cb"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ServiceWrapper;->getService()Landroid/service/controls/IControlsProvider;

    move-result-object p0

    new-instance v0, Landroid/service/controls/actions/ControlActionWrapper;

    invoke-direct {v0, p2}, Landroid/service/controls/actions/ControlActionWrapper;-><init>(Landroid/service/controls/actions/ControlAction;)V

    invoke-interface {p0, p1, v0, p3}, Landroid/service/controls/IControlsProvider;->action(Ljava/lang/String;Landroid/service/controls/actions/ControlActionWrapper;Landroid/service/controls/IControlsActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ServiceWrapper"

    const-string p2, "Caught exception from ControlsProviderService"

    .line 41
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final cancel(Landroid/service/controls/IControlsSubscription;)Z
    .locals 1
    .param p1    # Landroid/service/controls/IControlsSubscription;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo p0, "subscription"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    :try_start_0
    invoke-interface {p1}, Landroid/service/controls/IControlsSubscription;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ServiceWrapper"

    const-string v0, "Caught exception from ControlsProviderService"

    .line 41
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getService()Landroid/service/controls/IControlsProvider;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ServiceWrapper;->service:Landroid/service/controls/IControlsProvider;

    return-object p0
.end method

.method public final load(Landroid/service/controls/IControlsSubscriber;)Z
    .locals 1
    .param p1    # Landroid/service/controls/IControlsSubscriber;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ServiceWrapper;->getService()Landroid/service/controls/IControlsProvider;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/service/controls/IControlsProvider;->load(Landroid/service/controls/IControlsSubscriber;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ServiceWrapper"

    const-string v0, "Caught exception from ControlsProviderService"

    .line 41
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final loadProviderInfo(Landroid/service/controls/IControlsProviderInfoSubscriber;)Z
    .locals 1
    .param p1    # Landroid/service/controls/IControlsProviderInfoSubscriber;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ServiceWrapper;->getService()Landroid/service/controls/IControlsProvider;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/service/controls/IControlsProvider;->loadControlsProviderInfo(Landroid/service/controls/IControlsProviderInfoSubscriber;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ServiceWrapper"

    const-string v0, "Caught exception from ControlsProviderService"

    .line 41
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final loadSuggested(Landroid/service/controls/IControlsSubscriber;)Z
    .locals 1
    .param p1    # Landroid/service/controls/IControlsSubscriber;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ServiceWrapper;->getService()Landroid/service/controls/IControlsProvider;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/service/controls/IControlsProvider;->loadSuggested(Landroid/service/controls/IControlsSubscriber;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ServiceWrapper"

    const-string v0, "Caught exception from ControlsProviderService"

    .line 41
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final request(Landroid/service/controls/IControlsSubscription;J)Z
    .locals 0
    .param p1    # Landroid/service/controls/IControlsSubscription;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo p0, "subscription"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/service/controls/IControlsSubscription;->request(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ServiceWrapper"

    const-string p2, "Caught exception from ControlsProviderService"

    .line 41
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final subscribe(Ljava/util/List;Landroid/service/controls/IControlsSubscriber;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/service/controls/IControlsSubscriber;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/service/controls/IControlsSubscriber;",
            ")Z"
        }
    .end annotation

    const-string v0, "controlIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subscriber"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ServiceWrapper;->getService()Landroid/service/controls/IControlsProvider;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/service/controls/IControlsProvider;->subscribe(Ljava/util/List;Landroid/service/controls/IControlsSubscriber;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ServiceWrapper"

    const-string p2, "Caught exception from ControlsProviderService"

    .line 41
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method
