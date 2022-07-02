.class public final Lcom/android/keyguard/KeyguardPresentationDisabler_Factory;
.super Ljava/lang/Object;
.source "KeyguardPresentationDisabler_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/keyguard/KeyguardPresentationDisabler;",
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

.field private final settingsHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final vibratorHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPresentationDisabler_Factory;->vibratorHelperProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p2, p0, Lcom/android/keyguard/KeyguardPresentationDisabler_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    .line 29
    iput-object p3, p0, Lcom/android/keyguard/KeyguardPresentationDisabler_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/KeyguardPresentationDisabler_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dump/DumpManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/SettingsHelper;",
            ">;)",
            "Lcom/android/keyguard/KeyguardPresentationDisabler_Factory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/android/keyguard/KeyguardPresentationDisabler_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/KeyguardPresentationDisabler_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/SettingsHelper;)Lcom/android/keyguard/KeyguardPresentationDisabler;
    .locals 1

    .line 45
    new-instance v0, Lcom/android/keyguard/KeyguardPresentationDisabler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/KeyguardPresentationDisabler;-><init>(Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/SettingsHelper;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/keyguard/KeyguardPresentationDisabler;
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPresentationDisabler_Factory;->vibratorHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/VibratorHelper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPresentationDisabler_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/dump/DumpManager;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPresentationDisabler_Factory;->settingsHelperProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0, v1, p0}, Lcom/android/keyguard/KeyguardPresentationDisabler_Factory;->newInstance(Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/SettingsHelper;)Lcom/android/keyguard/KeyguardPresentationDisabler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 10
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPresentationDisabler_Factory;->get()Lcom/android/keyguard/KeyguardPresentationDisabler;

    move-result-object p0

    return-object p0
.end method
