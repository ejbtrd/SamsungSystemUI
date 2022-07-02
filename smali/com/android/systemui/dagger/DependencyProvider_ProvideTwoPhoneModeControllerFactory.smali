.class public final Lcom/android/systemui/dagger/DependencyProvider_ProvideTwoPhoneModeControllerFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideTwoPhoneModeControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;",
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

.field private final indicatorRuneWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/systemui/dagger/DependencyProvider;

.field private final settingsHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private final systemPropertiesWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideTwoPhoneModeControllerFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    .line 43
    iput-object p2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideTwoPhoneModeControllerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p3, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideTwoPhoneModeControllerFactory;->indicatorRuneWrapperProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p4, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideTwoPhoneModeControllerFactory;->systemPropertiesWrapperProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p5, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideTwoPhoneModeControllerFactory;->settingsHelperProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p6, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideTwoPhoneModeControllerFactory;->statusBarLazyProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/dagger/DependencyProvider_ProvideTwoPhoneModeControllerFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)",
            "Lcom/android/systemui/dagger/DependencyProvider_ProvideTwoPhoneModeControllerFactory;"
        }
    .end annotation

    .line 60
    new-instance v7, Lcom/android/systemui/dagger/DependencyProvider_ProvideTwoPhoneModeControllerFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/dagger/DependencyProvider_ProvideTwoPhoneModeControllerFactory;-><init>(Lcom/android/systemui/dagger/DependencyProvider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static provideTwoPhoneModeController(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;Lcom/android/systemui/util/SettingsHelper;Ldagger/Lazy;)Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/dagger/DependencyProvider;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;",
            "Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;"
        }
    .end annotation

    .line 67
    invoke-virtual/range {p0 .. p5}, Lcom/android/systemui/dagger/DependencyProvider;->provideTwoPhoneModeController(Landroid/content/Context;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;Lcom/android/systemui/util/SettingsHelper;Ldagger/Lazy;)Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
    .locals 6

    .line 52
    iget-object v0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideTwoPhoneModeControllerFactory;->module:Lcom/android/systemui/dagger/DependencyProvider;

    iget-object v1, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideTwoPhoneModeControllerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideTwoPhoneModeControllerFactory;->indicatorRuneWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    iget-object v3, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideTwoPhoneModeControllerFactory;->systemPropertiesWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    iget-object v4, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideTwoPhoneModeControllerFactory;->settingsHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/dagger/DependencyProvider_ProvideTwoPhoneModeControllerFactory;->statusBarLazyProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/dagger/DependencyProvider_ProvideTwoPhoneModeControllerFactory;->provideTwoPhoneModeController(Lcom/android/systemui/dagger/DependencyProvider;Landroid/content/Context;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;Lcom/android/systemui/util/SettingsHelper;Ldagger/Lazy;)Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/dagger/DependencyProvider_ProvideTwoPhoneModeControllerFactory;->get()Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    move-result-object p0

    return-object p0
.end method
