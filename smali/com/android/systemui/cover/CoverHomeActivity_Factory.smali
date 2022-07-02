.class public final Lcom/android/systemui/cover/CoverHomeActivity_Factory;
.super Ljava/lang/Object;
.source "CoverHomeActivity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/cover/CoverHomeActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final coverScreenManagerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/cover/CoverScreenManager;",
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
            "Lcom/android/systemui/cover/CoverScreenManager;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/cover/CoverHomeActivity_Factory;->coverScreenManagerLazyProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/cover/CoverHomeActivity_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/cover/CoverScreenManager;",
            ">;)",
            "Lcom/android/systemui/cover/CoverHomeActivity_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/android/systemui/cover/CoverHomeActivity_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/cover/CoverHomeActivity_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ldagger/Lazy;)Lcom/android/systemui/cover/CoverHomeActivity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/cover/CoverScreenManager;",
            ">;)",
            "Lcom/android/systemui/cover/CoverHomeActivity;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/android/systemui/cover/CoverHomeActivity;

    invoke-direct {v0, p0}, Lcom/android/systemui/cover/CoverHomeActivity;-><init>(Ldagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/cover/CoverHomeActivity;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/systemui/cover/CoverHomeActivity_Factory;->coverScreenManagerLazyProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/cover/CoverHomeActivity_Factory;->newInstance(Ldagger/Lazy;)Lcom/android/systemui/cover/CoverHomeActivity;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverHomeActivity_Factory;->get()Lcom/android/systemui/cover/CoverHomeActivity;

    move-result-object p0

    return-object p0
.end method
