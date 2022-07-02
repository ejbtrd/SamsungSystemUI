.class public final Lcom/android/systemui/uiautomator/dagger/PlankComponent;
.super Ljava/lang/Object;
.source "PlankComponent.kt"


# instance fields
.field private final featureEnabled:Z

.field private final lazyProtocolManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/uiautomator/protocol/ProtocolManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLdagger/Lazy;)V
    .locals 1
    .param p2    # Ldagger/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/uiautomator/protocol/ProtocolManager;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lazyProtocolManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean p1, p0, Lcom/android/systemui/uiautomator/dagger/PlankComponent;->featureEnabled:Z

    .line 16
    iput-object p2, p0, Lcom/android/systemui/uiautomator/dagger/PlankComponent;->lazyProtocolManager:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final getProtocolManager()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/uiautomator/protocol/ProtocolManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 19
    iget-boolean v0, p0, Lcom/android/systemui/uiautomator/dagger/PlankComponent;->featureEnabled:Z

    if-eqz v0, :cond_0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/uiautomator/dagger/PlankComponent;->lazyProtocolManager:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    const-string/jumbo v0, "{\n            Optional.of(lazyProtocolManager.get())\n        }"

    .line 19
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    const-string/jumbo v0, "{\n            Optional.empty()\n        }"

    .line 21
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
