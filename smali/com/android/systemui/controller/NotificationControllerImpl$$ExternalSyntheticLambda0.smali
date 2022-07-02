.class public final synthetic Lcom/android/systemui/controller/NotificationControllerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/controller/NotificationControllerImpl;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/controller/NotificationControllerImpl;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controller/NotificationControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/controller/NotificationControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controller/NotificationControllerImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/controller/NotificationControllerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/controller/NotificationControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/controller/NotificationControllerImpl$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {v0, p0}, Lcom/android/systemui/controller/NotificationControllerImpl;->$r8$lambda$lYJ5PAI2yZyXkg2vjtj9i0FLW5o(Lcom/android/systemui/controller/NotificationControllerImpl;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
