.class final Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;
.super Ljava/lang/Object;
.source "SmartspaceDedupingCoordinator.kt"


# instance fields
.field private alertExceptionExpires:J

.field private cancelTimeoutRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final key:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shouldFilter:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAlertExceptionExpires()J
    .locals 2

    .line 207
    iget-wide v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->alertExceptionExpires:J

    return-wide v0
.end method

.method public final getCancelTimeoutRunnable()Ljava/lang/Runnable;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 206
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->cancelTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 204
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getShouldFilter()Z
    .locals 0

    .line 208
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->shouldFilter:Z

    return p0
.end method

.method public final setAlertExceptionExpires(J)V
    .locals 0

    .line 207
    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->alertExceptionExpires:J

    return-void
.end method

.method public final setCancelTimeoutRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 206
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->cancelTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public final setShouldFilter(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/TrackedSmartspaceTarget;->shouldFilter:Z

    return-void
.end method
