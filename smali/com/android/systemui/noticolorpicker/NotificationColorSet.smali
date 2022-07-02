.class public Lcom/android/systemui/noticolorpicker/NotificationColorSet;
.super Ljava/lang/Object;
.source "NotificationColorSet.java"


# static fields
.field public static final GUT_PKG_NAME:I

.field public static final GUT_TITLE:I

.field public static final INBOX_ROWS:[I

.field public static final NOTIFICATION_DIMMED_BG:I

.field public static final NOTIFICATION_NORMAL_BG:I

.field public static final SINGLELINE_TEXT:I

.field public static final SINGLELINE_TITLE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 67
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/noticolorpicker/NotificationColorSet;->INBOX_ROWS:[I

    .line 71
    sget v0, Lcom/android/systemui/R$id;->notification_title:I

    sput v0, Lcom/android/systemui/noticolorpicker/NotificationColorSet;->SINGLELINE_TITLE:I

    .line 72
    sget v0, Lcom/android/systemui/R$id;->notification_text:I

    sput v0, Lcom/android/systemui/noticolorpicker/NotificationColorSet;->SINGLELINE_TEXT:I

    .line 73
    sget v0, Lcom/android/systemui/R$id;->backgroundNormal:I

    sput v0, Lcom/android/systemui/noticolorpicker/NotificationColorSet;->NOTIFICATION_NORMAL_BG:I

    .line 74
    sget v0, Lcom/android/systemui/R$id;->backgroundDimmed:I

    sput v0, Lcom/android/systemui/noticolorpicker/NotificationColorSet;->NOTIFICATION_DIMMED_BG:I

    .line 77
    sget v0, Lcom/android/systemui/R$id;->pkgname:I

    sput v0, Lcom/android/systemui/noticolorpicker/NotificationColorSet;->GUT_PKG_NAME:I

    .line 78
    sget v0, Lcom/android/systemui/R$id;->channel_name:I

    sput v0, Lcom/android/systemui/noticolorpicker/NotificationColorSet;->GUT_TITLE:I

    return-void

    nop

    :array_0
    .array-data 4
        0x102033a
        0x102033b
        0x102033c
        0x102033d
        0x102033e
        0x102033f
        0x1020340
    .end array-data
.end method
