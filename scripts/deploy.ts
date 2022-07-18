import { ethers } from "hardhat";

async function main() {
  const Moon = await ethers.getContractFactory("Moon");
  const moon = await Moon.deploy();

  await moon.deployed();

  console.log("Moon deployed to:", moon.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});