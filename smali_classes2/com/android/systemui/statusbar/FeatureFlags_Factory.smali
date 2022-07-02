.class public final Lcom/android/systemui/statusbar/FeatureFlags_Factory;
.super Ljava/lang/Object;
.source "FeatureFlags_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/FeatureFlags;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final flagReaderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/flags/FeatureFlagReader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/flags/FeatureFlagReader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/FeatureFlags_Factory;->flagReaderProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p2, p0, Lcom/android/systemui/statusbar/FeatureFlags_Factory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/FeatureFlags_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/flags/FeatureFlagReader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/statusbar/FeatureFlags_Factory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/android/systemui/statusbar/FeatureFlags_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/FeatureFlags_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/flags/FeatureFlagReader;Landroid/content/Context;)Lcom/android/systemui/statusbar/FeatureFlags;
    .locals 1

    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/FeatureFlags;-><init>(Lcom/android/systemui/flags/FeatureFlagReader;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/FeatureFlags;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/FeatureFlags_Factory;->flagReaderProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/flags/FeatureFlagReader;

    iget-object p0, p0, Lcom/android/systemui/statusbar/FeatureFlags_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/FeatureFlags_Factory;->newInstance(Lcom/android/systemui/flags/FeatureFlagReader;Landroid/content/Context;)Lcom/android/systemui/statusbar/FeatureFlags;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/FeatureFlags_Factory;->get()Lcom/android/systemui/statusbar/FeatureFlags;

    move-result-object p0

    return-object p0
.end method
