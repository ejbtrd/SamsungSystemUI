.class public interface abstract Lcom/samsung/systemui/splugins/slimindicator/SPluginSlimIndicatorBoxCallback;
.super Ljava/lang/Object;
.source "SPluginSlimIndicatorBoxCallback.java"


# static fields
.field public static final ICON_BLACKLIST_SETTING:Ljava/lang/String; = "icon_blacklist"

.field public static final VERSION:I = 0x138b

.field public static final mIconDrawableList:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final mIconEnableList:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final mIsShowHomeCarrier:Z = true

.field public static final mIsShowLockCarrier:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract getIsLockCarrier()Z
.end method

.method public abstract getIsShowCarrier()Z
.end method
