.class public final synthetic Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowControllerImpl;->setWideColorGamut(Z)V

    return-void
.end method
