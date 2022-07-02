.class public final Lcom/android/systemui/subscreen/SubHomeActivity_Factory;
.super Ljava/lang/Object;
.source "SubHomeActivity_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/subscreen/SubHomeActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final settingsHelperLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final subScreenManagerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
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
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/subscreen/SubHomeActivity_Factory;->subScreenManagerLazyProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/android/systemui/subscreen/SubHomeActivity_Factory;->settingsHelperLazyProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/subscreen/SubHomeActivity_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;)",
            "Lcom/android/systemui/subscreen/SubHomeActivity_Factory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/android/systemui/subscreen/SubHomeActivity_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/subscreen/SubHomeActivity_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ldagger/Lazy;Ldagger/Lazy;)Lcom/android/systemui/subscreen/SubHomeActivity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;)",
            "Lcom/android/systemui/subscreen/SubHomeActivity;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/android/systemui/subscreen/SubHomeActivity;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/subscreen/SubHomeActivity;-><init>(Ldagger/Lazy;Ldagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/subscreen/SubHomeActivity;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubHomeActivity_Factory;->subScreenManagerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubHomeActivity_Factory;->settingsHelperLazyProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/systemui/subscreen/SubHomeActivity_Factory;->newInstance(Ldagger/Lazy;Ldagger/Lazy;)Lcom/android/systemui/subscreen/SubHomeActivity;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/subscreen/SubHomeActivity_Factory;->get()Lcom/android/systemui/subscreen/SubHomeActivity;

    move-result-object p0

    return-object p0
.end method
