.class public final Lcom/android/systemui/BootAnimationFinishedCacheImpl_Factory;
.super Ljava/lang/Object;
.source "BootAnimationFinishedCacheImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/BootAnimationFinishedCacheImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final dumpManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
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
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/BootAnimationFinishedCacheImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;)",
            "Lcom/android/systemui/BootAnimationFinishedCacheImpl_Factory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/android/systemui/BootAnimationFinishedCacheImpl_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/BootAnimationFinishedCacheImpl_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/BootAnimationFinishedCacheImpl;
    .locals 1

    .line 34
    new-instance v0, Lcom/android/systemui/BootAnimationFinishedCacheImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/BootAnimationFinishedCacheImpl;-><init>(Lcom/android/systemui/dump/DumpManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/BootAnimationFinishedCacheImpl;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/BootAnimationFinishedCacheImpl_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpManager;

    invoke-static {p0}, Lcom/android/systemui/BootAnimationFinishedCacheImpl_Factory;->newInstance(Lcom/android/systemui/dump/DumpManager;)Lcom/android/systemui/BootAnimationFinishedCacheImpl;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/BootAnimationFinishedCacheImpl_Factory;->get()Lcom/android/systemui/BootAnimationFinishedCacheImpl;

    move-result-object p0

    return-object p0
.end method
