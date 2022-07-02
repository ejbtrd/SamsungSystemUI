.class public final Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController_Factory;
.super Ljava/lang/Object;
.source "ExpandableNotificationRowLongPressController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;",
        ">;"
    }
.end annotation


# instance fields
.field private final dragAndDropTriggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;",
            ">;"
        }
    .end annotation
.end field

.field private final gutTriggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/GutTrigger;",
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
            "Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/GutTrigger;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController_Factory;->dragAndDropTriggerProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController_Factory;->gutTriggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/row/GutTrigger;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController_Factory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;Lcom/android/systemui/statusbar/notification/row/GutTrigger;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;
    .locals 1

    .line 40
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;-><init>(Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;Lcom/android/systemui/statusbar/notification/row/GutTrigger;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController_Factory;->dragAndDropTriggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController_Factory;->gutTriggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/GutTrigger;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController_Factory;->newInstance(Lcom/android/systemui/statusbar/notification/row/DragAndDropTrigger;Lcom/android/systemui/statusbar/notification/row/GutTrigger;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController_Factory;->get()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowLongPressController;

    move-result-object p0

    return-object p0
.end method
