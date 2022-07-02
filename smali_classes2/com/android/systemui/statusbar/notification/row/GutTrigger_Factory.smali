.class public final Lcom/android/systemui/statusbar/notification/row/GutTrigger_Factory;
.super Ljava/lang/Object;
.source "GutTrigger_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/row/GutTrigger;",
        ">;"
    }
.end annotation


# instance fields
.field private final gutsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
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
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/GutTrigger_Factory;->gutsManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/GutTrigger_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/row/GutTrigger_Factory;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/GutTrigger_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/GutTrigger_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)Lcom/android/systemui/statusbar/notification/row/GutTrigger;
    .locals 1

    .line 32
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/GutTrigger;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/row/GutTrigger;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/row/GutTrigger;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/GutTrigger_Factory;->gutsManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/GutTrigger_Factory;->newInstance(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)Lcom/android/systemui/statusbar/notification/row/GutTrigger;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/GutTrigger_Factory;->get()Lcom/android/systemui/statusbar/notification/row/GutTrigger;

    move-result-object p0

    return-object p0
.end method
