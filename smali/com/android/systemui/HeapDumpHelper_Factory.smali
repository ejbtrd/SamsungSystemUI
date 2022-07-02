.class public final Lcom/android/systemui/HeapDumpHelper_Factory;
.super Ljava/lang/Object;
.source "HeapDumpHelper_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/HeapDumpHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final bgHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
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
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/HeapDumpHelper_Factory;->bgHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/HeapDumpHelper_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/android/systemui/HeapDumpHelper_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/android/systemui/HeapDumpHelper_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/HeapDumpHelper_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/os/Handler;)Lcom/android/systemui/HeapDumpHelper;
    .locals 1

    .line 33
    new-instance v0, Lcom/android/systemui/HeapDumpHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/HeapDumpHelper;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/HeapDumpHelper;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/HeapDumpHelper_Factory;->bgHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-static {p0}, Lcom/android/systemui/HeapDumpHelper_Factory;->newInstance(Landroid/os/Handler;)Lcom/android/systemui/HeapDumpHelper;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/HeapDumpHelper_Factory;->get()Lcom/android/systemui/HeapDumpHelper;

    move-result-object p0

    return-object p0
.end method
