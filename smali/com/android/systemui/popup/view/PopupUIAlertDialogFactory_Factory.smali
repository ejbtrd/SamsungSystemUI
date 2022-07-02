.class public final Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory_Factory;
.super Ljava/lang/Object;
.source "PopupUIAlertDialogFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;",
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

.field private final displayManagerWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/util/DisplayManagerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardUpdateMonitorWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final logWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/basic/util/LogWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final popupUIUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/util/PopupUIUtil;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/util/PopupUIUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/basic/util/LogWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/util/DisplayManagerWrapper;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p2, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory_Factory;->popupUIUtilProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory_Factory;->logWrapperProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory_Factory;->keyguardUpdateMonitorWrapperProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory_Factory;->displayManagerWrapperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/util/PopupUIUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/basic/util/LogWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/util/DisplayManagerWrapper;",
            ">;)",
            "Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory_Factory;"
        }
    .end annotation

    .line 51
    new-instance v6, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/popup/util/PopupUIUtil;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;Lcom/android/systemui/popup/util/DisplayManagerWrapper;)Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;
    .locals 7

    .line 57
    new-instance v6, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;-><init>(Landroid/content/Context;Lcom/android/systemui/popup/util/PopupUIUtil;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;Lcom/android/systemui/popup/util/DisplayManagerWrapper;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory_Factory;->popupUIUtilProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/popup/util/PopupUIUtil;

    iget-object v2, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory_Factory;->logWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/basic/util/LogWrapper;

    iget-object v3, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory_Factory;->keyguardUpdateMonitorWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;

    iget-object p0, p0, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory_Factory;->displayManagerWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/popup/util/PopupUIUtil;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/KeyguardUpdateMonitorWrapper;Lcom/android/systemui/popup/util/DisplayManagerWrapper;)Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory_Factory;->get()Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    move-result-object p0

    return-object p0
.end method
