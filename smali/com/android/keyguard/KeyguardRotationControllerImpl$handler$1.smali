.class public final Lcom/android/keyguard/KeyguardRotationControllerImpl$handler$1;
.super Landroid/os/Handler;
.source "KeyguardRotationControllerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardRotationControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyguardRotationControllerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyguardRotationControllerImpl.kt\ncom/android/keyguard/KeyguardRotationControllerImpl$handler$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,134:1\n1819#2,2:135\n*E\n*S KotlinDebug\n*F\n+ 1 KeyguardRotationControllerImpl.kt\ncom/android/keyguard/KeyguardRotationControllerImpl$handler$1\n*L\n54#1,2:135\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardRotationControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardRotationControllerImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl$handler$1;->this$0:Lcom/android/keyguard/KeyguardRotationControllerImpl;

    .line 47
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentRotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl$handler$1;->this$0:Lcom/android/keyguard/KeyguardRotationControllerImpl;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardRotationControllerImpl;->access$getCurrentRotation$p(Lcom/android/keyguard/KeyguardRotationControllerImpl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> rotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardRotationController"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl$handler$1;->this$0:Lcom/android/keyguard/KeyguardRotationControllerImpl;

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardRotationControllerImpl;->access$setCurrentRotation$p(Lcom/android/keyguard/KeyguardRotationControllerImpl;I)V

    .line 54
    iget-object p0, p0, Lcom/android/keyguard/KeyguardRotationControllerImpl$handler$1;->this$0:Lcom/android/keyguard/KeyguardRotationControllerImpl;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardRotationControllerImpl;->access$getListeners$p(Lcom/android/keyguard/KeyguardRotationControllerImpl;)Ljava/util/List;

    move-result-object p0

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;

    .line 55
    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardRotationController$KeyguardRotationListener;->onRotationChanged(I)V

    goto :goto_1

    :cond_1
    return-void
.end method
