.class public Lcom/android/settingslib/SignalIcon$MobileIconGroup;
.super Lcom/android/settingslib/SignalIcon$IconGroup;
.source "SignalIcon.java"


# instance fields
.field public activityIconsSet:[I

.field public final dataContentDescription:I

.field public final dataType:I

.field public final isWide:Z

.field public final qsDataType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II[I)V
    .locals 14

    .line 174
    sget-object v4, Lcom/android/settingslib/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v0, 0x0

    aget v9, v4, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v13, p4

    invoke-direct/range {v0 .. v13}, Lcom/android/settingslib/SignalIcon$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ[I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ[I)V
    .locals 0

    .line 160
    invoke-direct/range {p0 .. p9}, Lcom/android/settingslib/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    .line 162
    iput p10, p0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataContentDescription:I

    .line 163
    iput p11, p0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->dataType:I

    .line 164
    iput-boolean p12, p0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->isWide:Z

    .line 165
    iput p11, p0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->qsDataType:I

    .line 167
    iput-object p13, p0, Lcom/android/settingslib/SignalIcon$MobileIconGroup;->activityIconsSet:[I

    return-void
.end method
