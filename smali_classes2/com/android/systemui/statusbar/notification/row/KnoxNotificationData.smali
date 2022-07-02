.class public final Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;
.super Ljava/lang/Object;
.source "KnoxNotificationData.kt"


# instance fields
.field private hideUnlocked:Z

.field private isPersona:Z

.field private isSanitized:Z

.field private isSanitizedPendingIntent:Z

.field private sanitizing:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->Companion:Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$Companion;->getOWNER()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->sanitizing:I

    return-void
.end method


# virtual methods
.method public final getHideUnlocked()Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->hideUnlocked:Z

    return p0
.end method

.method public final getSanitizing()I
    .locals 0

    .line 18
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->sanitizing:I

    return p0
.end method

.method public final isPersona()Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->isPersona:Z

    return p0
.end method

.method public final isSanitized()Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->isSanitized:Z

    return p0
.end method

.method public final isSanitizedPendingIntent()Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->isSanitizedPendingIntent:Z

    return p0
.end method

.method public final setHideUnlocked(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->hideUnlocked:Z

    return-void
.end method

.method public final setPersona(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->isPersona:Z

    return-void
.end method

.method public final setSanitized(Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->isSanitized:Z

    return-void
.end method

.method public final setSanitizedPendingIntent(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->isSanitizedPendingIntent:Z

    return-void
.end method

.method public final setSanitizing(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->sanitizing:I

    return-void
.end method
