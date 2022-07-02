.class public final synthetic Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/noticolorpicker/NotificationColorPicker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/noticolorpicker/NotificationColorPicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/noticolorpicker/NotificationColorPicker;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/noticolorpicker/NotificationColorPicker;

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0, p1}, Lcom/android/systemui/noticolorpicker/NotificationColorPicker;->isNeedToUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p0

    return p0
.end method
