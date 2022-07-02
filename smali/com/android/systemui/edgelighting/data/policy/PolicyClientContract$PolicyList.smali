.class public final Lcom/android/systemui/edgelighting/data/policy/PolicyClientContract$PolicyList;
.super Ljava/lang/Object;
.source "PolicyClientContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/data/policy/PolicyClientContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PolicyList"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    sget-object v0, Lcom/android/systemui/edgelighting/data/policy/PolicyClientContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "policy_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/data/policy/PolicyClientContract$PolicyList;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
