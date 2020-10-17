using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace EPOLIS.Migrations
{
    public partial class initial : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Penutupans",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    JENISPENUTUPAN = table.Column<string>(nullable: true),
                    NOREGPENUTUPAN = table.Column<string>(maxLength: 20, nullable: true),
                    ADMINID = table.Column<string>(maxLength: 20, nullable: true),
                    TGLINPUT = table.Column<DateTime>(nullable: false),
                    TGLOTORISASI = table.Column<DateTime>(nullable: false),
                    STATUS = table.Column<string>(maxLength: 2, nullable: true),
                    NAMA = table.Column<string>(maxLength: 40, nullable: true),
                    NOSKK = table.Column<string>(maxLength: 1, nullable: true),
                    TGLSKK = table.Column<DateTime>(nullable: false),
                    NOPK = table.Column<string>(maxLength: 50, nullable: true),
                    CIF = table.Column<string>(maxLength: 20, nullable: true),
                    ISBROKER = table.Column<int>(maxLength: 20, nullable: false),
                    ISUPDATEPENUTUPANRENEWAL = table.Column<int>(nullable: false),
                    UPDATEBY = table.Column<string>(nullable: true),
                    UPDATEDATE = table.Column<DateTime>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Penutupans", x => x.Id);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Penutupans");
        }
    }
}
