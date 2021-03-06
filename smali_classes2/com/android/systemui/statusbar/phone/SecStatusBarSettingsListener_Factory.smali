.class public final Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener_Factory;
.super Ljava/lang/Object;
.source "SecStatusBarSettingsListener_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final phoneStatusBarPolicyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
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
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener_Factory;->statusBarProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener_Factory;->phoneStatusBarPolicyProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener_Factory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;
    .locals 1

    .line 38
    new-instance v0, Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener_Factory;->statusBarProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener_Factory;->phoneStatusBarPolicyProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener_Factory;->newInstance(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener_Factory;->get()Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;

    move-result-object p0

    return-object p0
.end method
