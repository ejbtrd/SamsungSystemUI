.class public final Lcom/android/systemui/statusbar/policy/CallbackHandler_Factory;
.super Ljava/lang/Object;
.source "CallbackHandler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/policy/CallbackHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final looperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler_Factory;->looperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/CallbackHandler_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;)",
            "Lcom/android/systemui/statusbar/policy/CallbackHandler_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackHandler_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackHandler_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/os/Looper;)Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .locals 1

    .line 33
    new-instance v0, Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler_Factory;->looperProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/CallbackHandler_Factory;->newInstance(Landroid/os/Looper;)Lcom/android/systemui/statusbar/policy/CallbackHandler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/CallbackHandler_Factory;->get()Lcom/android/systemui/statusbar/policy/CallbackHandler;

    move-result-object p0

    return-object p0
.end method
