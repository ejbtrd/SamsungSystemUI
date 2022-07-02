.class public Lcom/android/systemui/edgelighting/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static IS_UNIT_TEST:Z = false

.field public static ROUTINE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.routines"

.field public static final SA_LOGGING_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.app.cocktailbarservice.logging.EdgeSALoggingProvider/sa_logging"

    .line 259
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/edgelighting/Constants;->SA_LOGGING_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
