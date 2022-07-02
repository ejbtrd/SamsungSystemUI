.class public final Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory_Factory;
.super Ljava/lang/Object;
.source "OperatorUtilFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final commonUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/operator/CommonUtil;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/operator/CommonUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory_Factory;->commonUtilProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory_Factory;->systemPropertiesWrapperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/operator/CommonUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;",
            ">;)",
            "Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory_Factory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/statusbar/utils/operator/CommonUtil;Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;)Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;
    .locals 1

    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;-><init>(Lcom/android/systemui/statusbar/utils/operator/CommonUtil;Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory_Factory;->commonUtilProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/utils/operator/CommonUtil;

    iget-object p0, p0, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory_Factory;->systemPropertiesWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory_Factory;->newInstance(Lcom/android/systemui/statusbar/utils/operator/CommonUtil;Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;)Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory_Factory;->get()Lcom/android/systemui/statusbar/utils/operator/OperatorUtilFactory;

    move-result-object p0

    return-object p0
.end method
