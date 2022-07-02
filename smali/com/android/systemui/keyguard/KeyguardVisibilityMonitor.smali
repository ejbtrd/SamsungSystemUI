.class public Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;
.super Ljava/lang/Object;
.source "KeyguardVisibilityMonitor.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private cancelExecToken:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private curHeight:I

.field private curVisibility:I

.field private final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final heightChangedListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/IntConsumer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private listener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private needsExpand:Z

.field private final visibilityChangedListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/IntConsumer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->Companion:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 1
    .param p1    # Lcom/android/systemui/util/concurrency/DelayableExecutor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->curVisibility:I

    .line 24
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->curHeight:I

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->visibilityChangedListenerList:Ljava/util/List;

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->heightChangedListenerList:Ljava/util/List;

    return-void
.end method

.method private final cancelExecToken(Z)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "cancel"

    .line 80
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method

.method public static synthetic isStarted$default(Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;ZILjava/lang/Object;)Z
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isStarted(Z)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: isStarted"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p0, v0

    const-string p2, "KeyguardVisibleMonitor"

    .line 138
    invoke-static {p2, p1, p0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addVisibilityChangedListener(Ljava/util/function/IntConsumer;)V
    .locals 1
    .param p1    # Ljava/util/function/IntConsumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->visibilityChangedListenerList:Ljava/util/List;

    .line 113
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final cancel(Z)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->needsExpand:Z

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final cancelAll()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "cancelAll"

    .line 56
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken(Z)V

    return-void
.end method

.method public final detailLog(Ljava/util/function/BooleanSupplier;Ljava/lang/String;Ljava/util/function/BooleanSupplier;)V
    .locals 1
    .param p1    # Ljava/util/function/BooleanSupplier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/function/BooleanSupplier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "supplier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "needsCallStackSupplier"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-interface {p3}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->detailLog(Ljava/util/function/BooleanSupplier;Ljava/lang/String;Z)V

    return-void
.end method

.method public final detailLog(Ljava/util/function/BooleanSupplier;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/util/function/BooleanSupplier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "supplier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    .line 66
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    const/16 p2, 0xa

    const-string p3, "  "

    .line 68
    invoke-static {p2, p3}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "getCallers(10, \"  \")"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array p1, p1, [Ljava/lang/Object;

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected final heightChanged(I)V
    .locals 2

    .line 100
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->curHeight:I

    if-ne v0, p1, :cond_0

    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "heightChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->curHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->heightChangedListenerList:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/IntConsumer;

    .line 105
    invoke-interface {v1, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_0

    .line 107
    :cond_1
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->curHeight:I

    return-void
.end method

.method public final isStarted()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isStarted$default(Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;ZILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isStarted(Z)Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->needsExpand:Z

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isVisible()Z
    .locals 0

    .line 127
    iget p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->curVisibility:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final registerMonitor(Landroid/view/View;Ljava/util/function/Consumer;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/function/Consumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paramListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->listener:Ljava/util/function/Consumer;

    .line 31
    instance-of p2, p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 32
    :cond_1
    new-instance p2, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$1$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$1$1;-><init>(Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->setVisibilityChangedListener(Ljava/util/function/IntConsumer;)V

    .line 33
    new-instance p2, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$1$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor$registerMonitor$1$2;-><init>(Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->setHeightChangedListener(Ljava/util/function/IntConsumer;)V

    :goto_1
    return-void
.end method

.method public final removeHeightChangedListener(Ljava/util/function/IntConsumer;)V
    .locals 1
    .param p1    # Ljava/util/function/IntConsumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->heightChangedListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeVisibilityChangedListener(Ljava/util/function/IntConsumer;)V
    .locals 1
    .param p1    # Ljava/util/function/IntConsumer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->visibilityChangedListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->listener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->needsExpand:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string p0, "listener"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final start(Z)V
    .locals 3

    .line 38
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "start needsExpand="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-direct {p0, v1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken(Z)V

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->needsExpand:Z

    .line 41
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    const-wide/16 v0, 0x5dc

    invoke-interface {p1, p0, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->cancelExecToken:Ljava/lang/Runnable;

    return-void
.end method

.method protected final visibilityChanged(I)V
    .locals 2

    .line 89
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->curVisibility:I

    if-ne v0, p1, :cond_0

    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "visibilityChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->curVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->visibilityChangedListenerList:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/IntConsumer;

    .line 94
    invoke-interface {v1, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_0

    .line 96
    :cond_1
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->curVisibility:I

    return-void
.end method
