.class public final Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel_Factory;
.super Ljava/lang/Object;
.source "DataConnectionViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final alertDialogFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final intentWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/util/PopupUIIntentWrapper;",
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

.field private final toastWrapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/util/PopupUIToastWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final utilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/util/PopupUIUtil;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/util/PopupUIToastWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/basic/util/LogWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/util/PopupUIIntentWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/util/PopupUIUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p2, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel_Factory;->toastWrapperProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p3, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel_Factory;->logWrapperProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p4, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel_Factory;->intentWrapperProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p5, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel_Factory;->utilProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p6, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel_Factory;->alertDialogFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/util/PopupUIToastWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/basic/util/LogWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/util/PopupUIIntentWrapper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/util/PopupUIUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;",
            ">;)",
            "Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel_Factory;"
        }
    .end annotation

    .line 55
    new-instance v7, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/popup/util/PopupUIToastWrapper;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;Lcom/android/systemui/popup/util/PopupUIUtil;Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;
    .locals 8

    .line 61
    new-instance v7, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;-><init>(Landroid/content/Context;Lcom/android/systemui/popup/util/PopupUIToastWrapper;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;Lcom/android/systemui/popup/util/PopupUIUtil;Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel_Factory;->toastWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/popup/util/PopupUIToastWrapper;

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel_Factory;->logWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/basic/util/LogWrapper;

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel_Factory;->intentWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;

    iget-object v0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel_Factory;->utilProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/popup/util/PopupUIUtil;

    iget-object p0, p0, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel_Factory;->alertDialogFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/popup/util/PopupUIToastWrapper;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/popup/util/PopupUIIntentWrapper;Lcom/android/systemui/popup/util/PopupUIUtil;Lcom/android/systemui/popup/view/PopupUIAlertDialogFactory;)Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel_Factory;->get()Lcom/android/systemui/popup/viewmodel/DataConnectionViewModel;

    move-result-object p0

    return-object p0
.end method
