.class public final Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory_Factory;
.super Ljava/lang/Object;
.source "ControlsFragmentFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final badgeSubjectProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/util/BadgeSubject;",
            ">;"
        }
    .end annotation
.end field

.field private final controlsActivityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/LayoutUtil;",
            ">;"
        }
    .end annotation
.end field

.field private final saLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/SALogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/LayoutUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/SALogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/util/BadgeSubject;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory_Factory;->controlsActivityStarterProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p2, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory_Factory;->layoutUtilProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p3, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory_Factory;->saLoggerProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p4, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory_Factory;->badgeSubjectProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/LayoutUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/ui/util/SALogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/controls/controller/util/BadgeSubject;",
            ">;)",
            "Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory_Factory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;)Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;
    .locals 1

    .line 52
    new-instance v0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;-><init>(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory_Factory;->controlsActivityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;

    iget-object v1, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory_Factory;->layoutUtilProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controls/ui/util/LayoutUtil;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory_Factory;->saLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controls/ui/util/SALogger;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory_Factory;->badgeSubjectProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/controller/util/BadgeSubject;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory_Factory;->newInstance(Lcom/android/systemui/controls/ui/util/ControlsActivityStarter;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/SALogger;Lcom/android/systemui/controls/controller/util/BadgeSubject;)Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory_Factory;->get()Lcom/android/systemui/controls/ui/fragment/ControlsFragmentFactory;

    move-result-object p0

    return-object p0
.end method
