.class public final Lcom/android/keyguard/KeyguardRotationControllerImpl;
.super Ljava/lang/Object;
.source "KeyguardRotationControllerImpl.kt"

# interfaces
.implements Lcom/android/keyguard/KeyguardRotationController;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardRotationControllerImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyguardRotationControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyguardRotationControllerImpl.kt\ncom/android/keyguard/KeyguardRotationControllerImpl\n+ 2 KeyguardRotationControllerImpl.kt\ncom/android/keyguard/KeyguardRotationControllerImplKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,134:1\n128#2:135\n129#2,4:137\n133#2:142\n1819#3:136\n1820#3:141\n1819#3,2:143\n*E\n*S KotlinDebug\n*F\n+ 1 KeyguardRotationControllerImpl.kt\ncom/android/keyguard/KeyguardRotationControllerImpl\n*L\n65#1:135\n65#1,4:137\n65#1:142\n65#1:136\n65#1:141\n117#1,2:143\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/keyguard/KeyguardRotationControllerImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentRotation:I

.field private final handler:Lcom/android/keyguard/KeyguardRotationControllerImpl$handler$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isListening:Z

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rotationWatcher:Lcom/android/keyguard/KeyguardRotationControllerImpl$rotationWatcher$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/keyguard/KeyguardRotationControllerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardRotationControllerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->Companion:Lcom/android/keyguard/KeyguardRotationControllerImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->context:Landroid/content/Context;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->listeners:Ljava/util/List;

    .line 32
    new-instance p1, Lcom/android/keyguard/KeyguardRotationControllerImpl$rotationWatcher$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardRotationControllerImpl$rotationWatcher$1;-><init>(Lcom/android/keyguard/KeyguardRotationControllerImpl;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->rotationWatcher:Lcom/android/keyguard/KeyguardRotationControllerImpl$rotationWatcher$1;

    .line 44
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRotationControllerImpl;->updateListeningState()V

    .line 47
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v0, Lcom/android/keyguard/KeyguardRotationControllerImpl$handler$1;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardRotationControllerImpl$handler$1;-><init>(Lcom/android/keyguard/KeyguardRotationControllerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->handler:Lcom/android/keyguard/KeyguardRotationControllerImpl$handler$1;

    return-void
.end method

.method public static final synthetic access$getCurrentRotation$p(Lcom/android/keyguard/KeyguardRotationControllerImpl;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->currentRotation:I

    return p0
.end method

.method public static final synthetic access$getHandler$p(Lcom/android/keyguard/KeyguardRotationControllerImpl;)Lcom/android/keyguard/KeyguardRotationControllerImpl$handler$1;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->handler:Lcom/android/keyguard/KeyguardRotationControllerImpl$handler$1;

    return-object p0
.end method

.method public static final synthetic access$getListeners$p(Lcom/android/keyguard/KeyguardRotationControllerImpl;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->listeners:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setCurrentRotation$p(Lcom/android/keyguard/KeyguardRotationControllerImpl;I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->currentRotation:I

    return-void
.end method

.method private final updateListeningState()V
    .locals 6

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 83
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateListeningState() shouldListening = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " -> isListening = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->isListening:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardRotationController"

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "e.rethrowFromSystemServer()"

    if-eqz v0, :cond_1

    .line 89
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->isListening:Z

    if-nez v0, :cond_2

    .line 91
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->rotationWatcher:Lcom/android/keyguard/KeyguardRotationControllerImpl$rotationWatcher$1;

    .line 92
    iget-object v5, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    .line 91
    invoke-interface {v0, v2, v5}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->isListening:Z

    const-string p0, "Listening keyguard rotation start"

    .line 97
    invoke-static {v4, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0

    .line 101
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->isListening:Z

    if-eqz v0, :cond_2

    .line 103
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->rotationWatcher:Lcom/android/keyguard/KeyguardRotationControllerImpl$rotationWatcher$1;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->isListening:Z

    const-string p0, "Listening keyguard rotation stop"

    .line 108
    invoke-static {v4, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p0

    .line 105
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;)V
    .locals 2
    .param p1    # Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addListener = "

    .line 62
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardRotationController"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object p1, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->listeners:Ljava/util/List;

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 129
    check-cast v0, Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

    .line 65
    iget-object v1, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget v1, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->currentRotation:I

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;->onRotationChanged(I)V

    goto :goto_0

    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRotationControllerImpl;->updateListeningState()V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardRotationControllerImpl;->addCallback(Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "KeyguardRotationController:"

    .line 114
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  listeners"

    .line 115
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->listeners:Ljava/util/List;

    monitor-enter p1

    .line 117
    :try_start_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->listeners:Ljava/util/List;

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

    const-string v0, "    "

    .line 118
    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public removeCallback(Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;)V
    .locals 2
    .param p1    # Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "removeListener = "

    .line 73
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardRotationController"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 76
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardRotationControllerImpl;->updateListeningState()V

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardRotationControllerImpl;->removeCallback(Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;)V

    return-void
.end method
