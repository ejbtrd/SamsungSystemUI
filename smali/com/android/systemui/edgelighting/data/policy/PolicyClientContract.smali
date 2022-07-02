.class public Lcom/android/systemui/edgelighting/data/policy/PolicyClientContract;
.super Ljava/lang/Object;
.source "PolicyClientContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/data/policy/PolicyClientContract$PolicyItems;,
        Lcom/android/systemui/edgelighting/data/policy/PolicyClientContract$PolicyList;
    }
.end annotation


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.sm.policy"

    .line 10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/data/policy/PolicyClientContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method
